require 'sinatra'
require 'sinatra/reloader'

get '/name/:person1' do
	"Hello #{params[:person1]}"
end

get '/tea/:person1/:person2' do
	"#{params[:person1]} and #{params[:person2]} are having tea"
end

get '/battle/:person1/:person2' do
	outcome = rand(0..1)
	case outcome
	when 0
		"#{params[:person1]} beats #{params[:person2]}"
	when 1
		"#{params[:person2]} beats #{params[:person1]}"
	end
end
