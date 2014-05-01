require 'sinatra'
require 'sinatra/reloader'

get '/:entry1/:operator/:entry2' do
	case params[:operator]
		when "plus"
			"The answer is #{params[:entry2].to_i + params[:entry1].to_i}"
		when  "minus"
			"The answer is #{params[:entry2].to_i - params[:entry1].to_i}"
		when "times"
			"The answer is #{params[:entry2].to_i * params[:entry1].to_i}"
		when "divided"
			"The answer is #{params[:entry2].to_i / params[:entry1].to_i}"
		end
end