require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World"

end

# get '/:name' do
#   "Hello, my name is #{params[:name]}"
# end

# get '/:name/:meal' do
#   "I'm #{params[:name]} and I love #{params[:meal]}"
# end



get '/add' do
  "#{params[:num1].to_i} + #{params[:num2].to_i}"
end

get '/add/:num1' do
  "3"
end

get '/add/:num2' do
  "4"
end

get '/add/sum'
  "#{params[:num1].to_i} + #{params[:num2].to_i}"
end
get '/subtract' do
  "#{params[:num1].to_i} - #{params[:num2].to_i}"
end

get '/multiply' do
  "#{params[:num1].to_i} * #{params[:num2].to_i}"
end

get '/divide' do
  "#{params[:num1].to_i} / #{params[:num2].to_i}"
end

