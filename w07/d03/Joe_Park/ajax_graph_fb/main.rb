require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get '/' do 
  erb :index
end