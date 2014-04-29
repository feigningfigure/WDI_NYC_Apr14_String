require 'sinatra'
require 'sinatra/reloader'

def make_heading(user_name)
  # this is a function that generates HTML strings
  "<h1>Welcome #{user_name}!</h1>"
end

def make_profile(favorite_color)
  "<p>His favorite color is #{favorite_color}</p>"
end

get '/' do
  redirect "/index.html"
end

get '/home' do
  "#{make_heading(params[:user_name])}#{make_profile(params[:favorite_color])}"
end
