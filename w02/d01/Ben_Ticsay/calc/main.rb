require 'sinatra'
require 'sinatra/reloader'

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
			"ERROR: Stop trying to do fancy ish ya bish!"
	end
end