require 'sinatra'
require 'sinatra/reloader'


get '/' do
	erb :index	
end

get '/magic8ball' do 
	@question = params[:user_question]

	answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

	@question_answer = "#{@question} #{question_answer.sample}"

	erb :magic8ball
end

	

	# #@question = params[:results]
	# p @result = answers.sample

	# erb :result

