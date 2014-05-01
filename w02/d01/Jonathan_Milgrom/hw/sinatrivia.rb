require 'sinatra'
require 'sinatra/reloader'



get '/' do
	"Who was the first man in space?" 
end

get '/:answer1' do
	if params[:answer1] == "yuri_gagarin"
		return "Correct. Who was the first man on the moon?"
	
	else
		return "WRONG! Who was the first man on the moon?"
	end
end

get '/:answer1/:answer2' do
	if params[:answer2] == "neil_armstrong"
		return "Correct. Who is the best Laker of all time?"
	else
		return "WRONG! Who is the best Laker of all time?"
	end
end

get '/:answer1/:answer2/:answer3' do
	if params[:answer3] == "magic_johnson"
		return "Correct"
	else
		return "WRONG!"
	end
end
	