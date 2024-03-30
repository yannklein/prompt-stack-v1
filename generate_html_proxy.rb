require "uri"
require "json"
require "net/http"

def generate_html(text)
  url = URI(ENV["OPENAI_API_PROXY"])

  puts '-' * 50
  puts "Sending request to OpenAI API to generate an html file..."
  puts '-' * 50

  prompt = <<~PROMPT
    You are given a TEXT and your goal is to build the content of an HTML file corresponding to a website illustrating this TEXT.
    The website has to have some CSS style. This style has to be extremly colorful, fun, attractive and of professional grade with complex css rules like transform or @keyframes.
    It has to have several images. The source (src) of the image tag should all be of the pattern: https://loremflickr.com/WIDTH/HEIGHT/TOPIC. In the pattern, replace WIDTH by the image width, HEIGHT by the image height and TOPIC by a word representing the image. The image height and width should not be over 400px.
    The website has to have at least 4 cards containing text paragraphs as well as 2 paragraphs out of the cards.
    The website has to have some Javascript code that changes the images size, position or rotation when we click on them, add this Javascript code to the HTML file inside <script> tags.
    You can use bootstrap 5.3 classes in the HTML for the style.
    The website background color should be a css gradient with calm colors.
    The website should be responsive and adapt well to any size of screen.
    Your output should only be a json file with a first key being 'HTML' and its value being the content of the HTML file.
    The given TEXT is: #{text}
  PROMPT

  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true

  request = Net::HTTP::Post.new(url)
  request["Content-Type"] = "application/json"
  request.body = JSON.dump({
    "format": {
      "type": "json_object"
    },
    "messages": [
      { role: "system", content: "You are a talented frontend web developer."},
      { role: "user", content: prompt }
    ]
  })

  response = https.request(request)
  p JSON.parse(response.read_body)
end