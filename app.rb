require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require 'dotenv/load' if development?
require_relative "generate_html"

# app.rb = Router + Controller

# http://localhost:4567/ (root)
get "/" do
  @frontend = generate_html(params[:something] || "flying pokemons")
  erb :index
end