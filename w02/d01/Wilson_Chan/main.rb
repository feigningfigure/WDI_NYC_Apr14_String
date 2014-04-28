require 'sinatra'
require 'sinatra/reloader'

# get '/' do
#   "Hello World!"
# end

# get '/:name' do # symbol :name the / collects whatever value from the browser
#   "Hello my name is #{params[:name]}"
# end

# get '/:name/:meal' do
#   "I'm #{params[:name]} and I love #{params[:meal]}"
# end

get '/:operation/:num1/:num2' do
  case params[:operation]
  when "add"
    "The result is #{params[:num1].to_i + params[:num2].to_i}"
  when "subtract"
    "The result is #{params[:num1].to_i - params[:num2].to_i}"
  when "multiply"
    "The result is #{params[:num1].to_i * params[:num2].to_i}"
  when "divide"
    "The result is #{params[:num1].to_i / params[:num2].to_i}"
  else
    "ERROR: Stop and try again."
  end

end
