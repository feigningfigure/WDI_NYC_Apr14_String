require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"Who was the first man in space?"
end

get '/:guess' do
	if params[:guess] == "yuri_gagarin"
		"Correct. Who was the first man on the moon?"
	elsif params[:guess] == "neil_armstrong"
		"Correct. Who was the first man on the moon?"
	else
		"Try again! Who was the first man on the moon?"
	end
end

