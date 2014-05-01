require 'sinatra'
require 'sinatra/reloader'

get '/:gathering/:name1/:name2' do
	case params[:gathering]
	when "tea"
		"#{params[:name1]} and #{params[:name2]} are having a tea party"
	when "battle"
		x = rand(1..2)
		if x == 1
		"#{params[:name1]} beats #{params[:name2]}, #{x}"
		else
		"#{params[:name2]} beats #{params[:name1]}, #{x}"
		end
	end
end