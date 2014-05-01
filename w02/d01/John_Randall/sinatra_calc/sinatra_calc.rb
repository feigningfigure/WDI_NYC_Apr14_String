require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"<h1> Quick Calculator!</h1> /n Welcome to John's Sinatra Calc"

	
end




# "pick a command"
# 	"<a href='/addition'>addition"
# 	"<a href='/subtraction">subtraction"
# 	"<a href="/multiplication">multiplication"
# 	"<a href="/division">division"
# # end

# get '/:command'
# 	case command
# 	when addition
# 		"Addition! What is your first number?"
# 	when subtraction
# 		"Subtraction! What is your first number?"
# 	when multiplication
# 		"Multiplication! What is your first number?"
# 	when division
# 		"Division! What is your first number?"
# 	end





get '/:command/:num1/:num2' do
	calculate(params[:command].to_i, params[:num1].to_i, params[:num2].to_i)
end





def calculate(command, num1, num2)
	answer = 0

	case params[:command]

	when 'plus'
		answer = num1 + num2
	when 'minus'
		answer = num1 - num2
	when 'times'
		answer = num1 * num2
	when 'divided by'
		answer = num1 / num2
	else
		return 'I do not know how to do that'
	end

	return "#{params[:num1]} #{params[:command]} #{params[:num2]} = #{answer}"
end



