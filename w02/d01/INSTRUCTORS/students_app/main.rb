require 'sinatra'
# optional
require 'sinatra/reloader'

# this loads a global variable called $students which is an array of hashes
require_relative "db/students"

get "/" do
  $students[0]["Name"]
end
