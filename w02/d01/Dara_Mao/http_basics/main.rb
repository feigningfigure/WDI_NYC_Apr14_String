require 'sinatra'
require 'sinatra/reloader' #will restart sinatra automatically

#GET request
get '/' do
  "Hello world."
end

get '/:name'do #key for that branch to be
  "Hello, my name is #{params[:name]}"
end

get '/:name/:meal' do
  "I'm #{params[:name]} and I love #{params[:meal]}"
end

get '/:num1/:num2/' do
 " #{params[:num1]} and #{params[:num2]}"
end

# get '/:num1/:num2/:sum' do
#   sum = num1.to_i + num2.to_i
#  "The sum of #{params[:num1]} and #{params[:num2]} is #{params[:sum]}"
#   end

#   get '/:name/:num1/:num2/:sum' do
#   sum = num1.to_i + num2.to_i
#  "The sum of #{params[:num1]} and #{params[:num2]} is #{params[:sum]}"
#   end

#http://localhost:4567/dara
#localhost = 127.0.0.1

#CMD + Option + i to toggle "View/Developer Tool" in Chrome


