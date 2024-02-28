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
        { role: "user", content: "You are given a TEXT and you're goal is to build the content of an HTML file and the content of a CSS file corresponding to  website illustrating this TEXT." },
        { role: "user", content: "The website has to be be style extremly colorful, fun, attractive of professional grade with complex css. It has to have several images. The source (src) of the image tag should all be of the pattern: https://loremflickr.com/WIDTH/HEIGHT/TOPIC. In the pattern, replace WIDTH by the image width, HEIGHT by the image height and TOPIC by a word representing the image." },
        { role: "user", content: "The website has to have some Javascript code that change image size, position and rotation when we click on them, add this Javascript code to the HTML file inside <script> tags." },
        { role: "user", content: "You can use bootstrap 5.3 classes in the HTMl for the style." },
        { role: "user", content: "The website background color should be use a css gradient with calm colors." },
        { role: "user", content: "The website should be responsive and adapt well to any size of screen." },
        { role: "user", content: "You output should only be a json file with a first key being 'HTML' and its value being the content of the HTMl file, and a second key 'CSS' and its value being the content of the CSS file." },
        { role: "user", content: "The given TEXT is: #{text}" },
      ],    })
  p raw_result = response.dig("choices", 0, "message", "content")
  p JSON.parse(raw_result)
end