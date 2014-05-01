require 'sinatra' 
require 'sinatra/reloader'

# require 'httparty'


get '/' do
	"Hello World!"
end

get '/:name' do
	"Hello, my name is #{params[:name]}"
	# params hash makes the object in the url the value that interacts with corresponding code as the value 
end

get '/:name/:lamp' do
	"I'm #{params[:name]} and I love #{params[:lamp]}"
end


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
