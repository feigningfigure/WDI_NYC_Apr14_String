require 'sinatra'

get '/' do
  "Who was the first man in space?"
end
get '/yuri gagarin' do
  "Correct. Who was the first man in the moon?"
end
get '/neil armstrong' do
  "Correct. Who was the first woman in to win a Noble Prize?"
get '/marie%20curie' do
  "You have answered all the questions!"
end

