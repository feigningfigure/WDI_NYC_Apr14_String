#sinatra lecture
require 'sinatra'
#this saves you from reloading the server everytime you make a chane in your file
require 'sinatra/reloader'

# #getrequest
# get '/' do
# 	"Hello World"
# end

# #get request
# #passing params
# get '/:name' do
# 	#takes the symbol and displays it on the page
# 	"Hello, my name is #{params[:name]}"
# end

# #get request
# #passing params
# get '/:name/:meal' do
# 	"I'm #{params[:name]} and I love #{params[:meal]}"
# end


#calculator file - my version
# get '/' do
# 	"Welcome to the Calculator	Enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide"
# end

#colons to make symbols are only necessary in front of the specific params we are calling
# get '/:operation' do
# 	params[:operation]
# 	end

# get '/operation/:num1' do
# 	params[:num1]
# end

# get '/:operation/:num1/:num2' do
# 	if params[:operation] do
# 		"#{params[:num1].to_i + params[:num2].to_i}"
# 	end
# end

#below code is a way to type a multiline string
get '/' do
	<<-WHATEVER YOU WANT IN CAPS
	"string"
	WHATEVER YOU WANT IN CAPS	
end



#calculator file - class review version
get '/:operation/:num1/:num2' do
	case params[:operation]
	when "add"
		"The answer is #{params[:num1].to_i + params[:num2].to_i}."
	when "subtract"
		"The answer is #{params[:num1].to_i - params[:num2].to_i}."
	when "subtract"
		"The answer is #{params[:num1].to_i - params[:num2].to_i}."
	when "multiply"
		"The answer is #{params[:num1].to_i * params[:num2].to_i}."
	when "divide"
		"The answer is #{params[:num1].to_i / params[:num2].to_i}."
	else
		"ERROR: don't be a smarty pants!"
	end
end


