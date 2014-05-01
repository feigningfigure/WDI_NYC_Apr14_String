require 'sinatra'
require 'sinatra/reloader'

def make_heading
"<h1>Welcome #{user_name</h1>"
end

def make_profile(favorite_color)
	"<p>His favorite color is: #{favorite_color}</p>"
end

def 



get '/' do
  redirect "/index.html"
end

get '/wow' do
  "Wow!"
end

get '/bad_link' do
  "<a href='wow'>bad link</a>"
end

