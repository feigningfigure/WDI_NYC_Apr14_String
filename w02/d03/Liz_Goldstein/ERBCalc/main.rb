require 'sinatra'
require 'sinatra/reloader'

get '/' do
 "Hello me"
end

get '/add/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  @answer = num1 + num2
  erb :add
end

get '/subtract/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  @answer = num1 - num2
  erb :subtract
end

get '/multiply/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  @answer = (num1 * num2)
  erb :multiply
end

get '/divide/:num1/:num2' do
  num1 = params[:num1].to_f
  num2 = params[:num2].to_f
  @answer = (num1 / num2)
  erb :divide
end

# Joel's SHORT answer
# get '/:operation/:num1/:num2' do
#   case params[:operation]
#   when "add"
#     @result = params[:num1].to_i + params[:num2].to_i
#   when "subtract"
#     @result = params[:num1].to_i - params[:num2].to_i
#   when "multiply"
#     @result = params[:num1].to_i * params[:num2].to_i
#   when "divide"
#     @result = params[:num1].to_i / params[:num2].to_i
#   else
#     "ERROR: Stop trying to do fancy stuff!"
#   end
#   erb :results
# end
