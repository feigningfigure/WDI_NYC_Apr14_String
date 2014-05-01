require 'sinatra'
require 'sinatra_reloader'
require 'erb'

get '/' do
  erb :index
end

get '/:operation/:num1/:num2'

case params[:operation]
  when "add"
    "The answer is #{params[:num1].to_i + params[:num2].to_i]}"
  when "subtract"
  "The answer is #{params[:num1].to_i - params[:num2].to_i}"
  when "multiply"
  "The answer is #{params[:num1].to_i * params[:num2].to_i}"
  when "divide"
    "The answer is #{params[:num1].to_i / params[:num2].to_i}"
  else
    "I can't do that fancy stuff."
  end
end
