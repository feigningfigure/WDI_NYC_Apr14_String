require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "What Austrian symbolist painter had Egon Schiele as a protege?"
end

get '/gustav_klimt' do
  "Correct! What country's capital city is named Montevideo?"
end

get '/uruguay' do
  "You're on fire! What German composer had a feud with philosopher Friedrich Nietzsche, with whom he previously shared a close friendship?"
end

get '/richard_wagner' do
  "Yeah boy! Where does sound travel faster? Water or air?"
end

get '/water' do
  "You got it! Last question to get the prize: what are the first million digits of pi?"
end


get '/:wrong_answer' do
  "D'oh! Sorry; your answer is incorrect."
end
