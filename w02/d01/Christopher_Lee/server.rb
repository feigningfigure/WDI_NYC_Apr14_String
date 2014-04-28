require 'sinatra'
require 'httparty'

# HTTP VERB + URI Pattern + Block of Code
get "/" do
  "<h1>Hello World!</h1>"
end
