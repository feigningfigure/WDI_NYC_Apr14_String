require 'sinatra'
require 'sinatra/reloader'

get '/:operation/:num1/:num2' do
	if params[:operation] == "add"
		@answer = params[:num1].to_i + params[:num2].to_i
	elsif params[:operation] == "subtract"
		@answer = params[:num1].to_i - params[:num2].to_i
	elsif params[:operation] == "multiply"
		@answer = params[:num1].to_i * params[:num2].to_i
	else params[:operation] == "divide"
		@answer = params[:num1].to_i / params[:num2].to_i
	end

	erb :answer
end
