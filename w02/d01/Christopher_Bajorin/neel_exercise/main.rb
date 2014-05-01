require 'sinatra'
require 'sinatra/reloader'

get '/' do
   "Hello World and stuff!"
end

# get '/:name' do
#   "Hello, my name is #{params[:name]}"
# end

# get '/:name/:meal' do
#   "I'm #{params[:name]}, and I love #{params[:meal]}"
# end

# Below code has vulnerability to attacks

# get '/:name/:meal/:calc' do
#   calculation = eval("#{params[:calc]}")
#   return "The url evaluates to: #{calculation}"
# end

get '/:operation/:num1/:num2' do
  case params[:operation]
  when "add"
    "The answer is #{params[:num1].to_i + params[:num2].to_i}"
  when "subtract"
    "The answer is #{params[:num1].to_i - params[:num2].to_i}"
  when "multiply"
    "The answer is #{params[:num1].to_i * params[:num2].to_i}"
  when "divide"
    "The answer is #{params[:num1].to_i / params[:num2].to_i}"
  else
    "<img src='http://s2.quickmeme.com/img/7f/7fc9d07119f7b4fc53359f9290589fff68201fc2d26ed119ab041cc6c51fdf7e.jpg'>"
  end
end
