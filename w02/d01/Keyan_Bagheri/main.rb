require 'sinatra'
require 'sinatra/reloader'


get '/:operation/:num1/:num2' do
	case params[:operation]
	when "add"
		"The answer is #{params[:num1].to_i + params[:num2].to_i}"
	when "subtract"
		"The answer is #{params[:num1].to_i - params[:num2].to_i}"
	when "divide"
		"The answer is #{params[:num1].to_i / params[:num2].to_i}"
	when "multiply"
		"The answer is #{params[:num1].to_i * params[:num2].to_i}"
	else
		"ERROR: Stop trying to do fancy stuff!" 
	end
		
end

# # HTTP VERB + URI Pattern + Block of Code
# get '/' do
#   "<h2>Hello World!</h2>"
# end

# get '/:name' do
#   "Hello, my name is #{params[:name]}"
# end

# get '/:name/:meal' do
#   "I'm #{params[:name]} and I love #{params[:meal]}"
# end

# get '/:operator/:number/:number2' do
#   number1 = params[:number].to_i
#   number2 = params[:number2].to_i

#   case params[:operation]
#     when "add"
#       params[:operation] = +
#     when "minus"
#       params[:operation] = -
#   end
#   "#{number1} #{params[:operation]} {number2}"
# end