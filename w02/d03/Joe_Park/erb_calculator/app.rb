require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

get '/:name' do
	@name = params[:name]
	
	erb :name
end


get '/:operation/:num1/:num2' do
	@operation = params[:operation]
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	#@answer is equal to the entire case @operation statement
	@answer = case @operation
				when "add"
					@num1 + @num2
				when "subtract"
					@num1 - @num2
				when "multiply"
					@num1 * @num2
				when "divide"
					@num1 / @num2
				else
					"Error!"
					# erb :error
				end

	erb :calc

end