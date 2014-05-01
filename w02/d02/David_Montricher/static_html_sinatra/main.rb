require 'sinatra'
require 'sinatra/reloader'

get '/' do
  redirect "/index.html"
end

get '/wow' do
  "Wow!"
end

get '/bad_link' do
  "<a href='wow'>bad link</a>"
end

