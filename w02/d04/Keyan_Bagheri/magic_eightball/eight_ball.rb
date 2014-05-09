require 'sinatra'
require 'sinatra/reloader'

answer_bank = ["I don't know", "Figure things out yourself", "It is not in my power to say", "The outlook is cloudy", "Ask me in a nicer tone","Outlook not so good", "I think so", "It is so", "Decidedly so", "I want to say yes. But I wont", "Yes. Yes. Yes.", "Oh yeah!", "I wouldn't count on it","I don't see that happening", "Without a doubt","Sounds very likey", "You already know the answer to that", "Are you sure you want to know that?", "Most certainly no", "Yes", "Don't hold your breath", "Try again later", "I don't know, I'm just a ball", "Perhaps", "Nope. Nope. Noooope.", "Hmmm. I don't think so", "In another universe perhaps. Not here.", "Why would you ask me that?"]

get '/' do

	erb :questions
end

get '/answer' do
	@answer = answer_bank.sample
	quest = params[:question]
	if quest.length < 1
		erb :error
	else
	erb :answer
	end
end