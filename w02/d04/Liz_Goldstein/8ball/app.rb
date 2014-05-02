require 'sinatra'
require 'sinatra/reloader'



get '/' do
	erb :index
end

# get '/stock?stock_name=' do
# 	erb :error
# end

get '/question' do
	@question = params[:user_question]
# #
 @answer = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"].sample

	erb :question

end

# get '/stock?stock_name=nil' do
# 	erb :error
# end
