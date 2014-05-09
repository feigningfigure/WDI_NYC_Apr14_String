require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/play' do
 erb :rps_welcome
end

get '/play/' do
 # user_input = params[:rock_paper]
 # @rock = quote[user_input].rock
 # @paper = quote[user_input].paper
 # @scissors = quote[user_input].scissors
 # erb :rps_index
# end