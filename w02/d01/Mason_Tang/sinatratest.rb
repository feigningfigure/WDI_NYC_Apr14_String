require 'sinatra'
require 'httparty'

# simple request GET http://www.google.com/users
# document = HTTParty.et("http://www.google.com/users")
# puts document

# HTTP VERB + URI Pattern + Block of Code
get "/" do
 "Hello World!"
 end
