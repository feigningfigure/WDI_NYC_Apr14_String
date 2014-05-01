require 'sinatra'
require 'sinatra/reloader'

#accept a questions
#return a randomly selected ball

get '/' do
  erb :index
end

get '/name' do
  @name = params[:user_input].capitalize
  array= ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]
  @message = array.sample
  erb :name
end
