require 'sinatra'
require 'sinatra/reloader'

get '/tea/:name1/:name2' do
  "#{params[:name1].capitalize} and #{params[:name2].capitalize}, are having a lovely tea ceremony."
end

get '/battle/:name1/:name2' do
  number = rand(1..3)
  if number == 1
  "#{params[:name1].capitalize} beats #{params[:name2].capitalize}."
elsif number == 2
  "#{params[:name2].capitalize} beats #{params[:name1].capitalize}."
else
  "It's a tie!"
end
end
