require 'sinatra'
require 'sinatra/reloader'



answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]


get '/' do
  erb :index
end


get '/:ask' do
  # @question = answers.shuffle[01]
  @ask = params[:question]
  @answer =   answers.sample
  erb :question
end
