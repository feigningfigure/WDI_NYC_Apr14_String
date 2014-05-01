require 'sinatra'
require 'sinatra/reloader'

get '/' do
  questions = ["Who founded Manhattan?", "What's the name of the park down the street?"]
  "#{questions.sample}"
  $question = "#{questions.sample}"
end

get '/:answer1' do
case
  when $question == "Who founded Manhattan?" && "#{params[:answer1]}" == "peter_stuyvesant"
  "Correct! \n Who is president right now?"
when $question == "What's the name of the park down the street?" && "#{params[:answer1]}" == "madison_square_park"
  "Correct! \n Who is president right now?"
when "#{params[:answer1]}" == "barack_obama"
  "correct! \n Who is the lead singer of Gogol Bordello?"
when "#{params[:answer1]}" == "eugene_hutz"
  "correct! \n Wow you ROCK at trivia! Party!"
else
  "WRONG!"
end
end



