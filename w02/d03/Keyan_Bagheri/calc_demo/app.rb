require 'sinatra'
require 'sinatra/reloader'


get '/:operation/:first_number/:second_number' do
	@operation = params[:operation]
	@first_number = params[:first_number].to_i
	@second_number = params[:second_number].to_i
	@answer = 
	
	case @operation
	when "add"
		@first_number + @second_number
	when "subtract"
		@first_number - @second_number
	when "multiply"
		@first_number * @second_number
	when "divide"
		@first_number / @second_number
	else
		"ERROR: Stop trying to do fancy stuff!"
	end

	erb :operation
end

