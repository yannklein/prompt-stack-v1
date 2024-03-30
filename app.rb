require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require 'dotenv/load' if development?
require_relative "generate_html_proxy"

# app.rb = Router + Controller

# http://localhost:4567/ (root)
get "/" do
  html_code = generate_html(params[:something] || "flying pokemons") 
  @frontend = html_code['HTML'] || html_code['error']
  erb :index
end