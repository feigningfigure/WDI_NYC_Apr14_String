require 'sinatra'
require 'sinatra/reloader'

get "/" do
  "<h2>Welcome to Hello, Sinatra. Please phrase your uri as /name/(Your Name)/</h2>"
end

get "/name/:name" do
  "<h1>Hello #{params[:name].capitalize}!</h1>"
end
