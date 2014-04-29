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

#BONUS randomizing questions
#make arrays in arrays, call them by array[][]
# questions = [
# 	{"Who discovered North America?", "A"},
# 	{"Who was one of the the first men on the moon?", "yuri_gagarin"},
# 	{"Who was one of the the first men on the moon?", "neil_armstrong"},
# ]

# get '/' do
# 	question = rand(0..2)
# 	Case ask_question
# 	when

# end