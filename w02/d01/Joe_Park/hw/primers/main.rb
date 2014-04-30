require 'sinatra'
require 'sinatra/reloader'

# require_relative "db/trivia"

get "/name/:name" do
	"Hello #{params[:name].capitalize}!"
end

get "/tea/:name1/:name2" do
	"#{params[:name1].capitalize} and #{params[:name2].capitalize} are having a lovely tea ceremony."
end

get "/battle/:name1/:name2" do
	random = rand(1..2)

	if random == 1
	"#{params[:name1].capitalize} beats #{params[:name2].capitalize}...FINISH HIM!"
	else
	"#{params[:name2].capitalize} beats #{params[:name1].capitalize}...FINISH HIM!"
	end
end

# get "/" do
# 	$trivia.each do |key, value|
# end

get "/" do
	"Who was the first man in space?"
end

get "/:answer1" do

	if params[:answer1] == "yuri_gagarin"
		"Correct. Who was the first man on the moon?"
	else
		"Wrong!"
	end
end

get "/yuri_gagarin/:answer2" do

	if params[:answer2] == "neil_armstrong"
		"Correct. What was the name of the company that developed Final Fantasy VIII?"
	else
		"Wrong!"
	end
end

get "/yuri_gagarin/neil_armstrong/:answer3" do

	if params[:answer3] == "squaresoft"
		"Correct! YOU WIN!"
	else
		"Wrong!"
	end
end
	
# get "/" do
# 	random = rand(1..2)

# 	case random
# 	when 1
# 		"Who was the first man in space?"
# 		get "/:answer" do
# 			if params[:answer] == "/yuri_gagarin"
# 				"Correct!"
# 			else
# 				"Incorrect!"
# 			end
# 		end

# 	when 2
# 		"Who was the first man on the moon?"
# 		get "/:answer" do
# 			if params[:answer] == "/neil_armstrong"
# 				"Correct!"
# 			else
# 				"Incorrect!"
# 			end
# 		end

# 	else
# 		"ERROR!"
# 	end

# end


	

