require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require 'rdio_api'

get '/' do
  "Hello World!"
  erb :index
end
