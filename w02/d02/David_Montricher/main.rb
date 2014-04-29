require 'sinatra'
require 'sinatra/reloader'

get '/' do |variable|
  # this is too long
  # File.open("index.html").read
end
