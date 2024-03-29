require 'openai'

def generate_html(text)

  OpenAI.configure do |config|
    config.access_token = ENV["OPENAI_API_KEY"]
  end

  client = OpenAI::Client.new
  puts '-' * 50
  puts "Sending request to OpenAI API to generate an html file..."
  puts '-' * 50
  response = client.chat(
    parameters: {
      model: "gpt-3.5-turbo-0125",
      response_format: { "type": "json_object" },
      messages: [
        { role: "system", content: "You are a talented frontend web developer."},
        { role: "user", content: "You are given a TEXT and your goal is to build the content of an HTML file and the content of a CSS file corresponding to a website illustrating this TEXT." },
        { role: "user", content: "The website style has to be extremly colorful, fun, attractive of professional grade with complex css rules like transform or @keyframes. It has to have several images. The source (src) of the image tag should all be of the pattern: https://loremflickr.com/WIDTH/HEIGHT/TOPIC. In the pattern, replace WIDTH by the image width, HEIGHT by the image height and TOPIC by a word representing the image. The image height and width should not be over 400px." },
        { role: "user", content: "The website has to have at least 4 cards containing text paragraphs as well as 2 paragraphs out of the cards." },
        { role: "user", content: "The website has to have some Javascript code that changes the images size, position or rotation when we click on them, add this Javascript code to the HTML file inside <script> tags." },
        { role: "user", content: "You can use bootstrap 5.3 classes in the HTML for the style." },
        { role: "user", content: "The website background color should be a css gradient with calm colors." },
        { role: "user", content: "The website should be responsive and adapt well to any size of screen." },
        { role: "user", content: "Your output should only be a json file with a first key being 'HTML' and its value being the content of the HTML file, and a second key 'CSS' and its value being the content of the CSS file." },
        { role: "user", content: "The given TEXT is: #{text}" },
      ],    
  })
  p raw_result = response.dig("choices", 0, "message", "content")
  p JSON.parse(raw_result)
end