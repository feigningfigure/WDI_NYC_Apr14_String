require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'json'

get '/' do
	erb :index
end