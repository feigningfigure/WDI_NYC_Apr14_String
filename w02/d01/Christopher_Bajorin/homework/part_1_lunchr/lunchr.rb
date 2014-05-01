require 'sinatra'
require 'sinatra/reloader'
require_relative 'foods.rb'

get '/' do
  <<-HTML
  <h3><a href="http://localhost:4567/lunch">Help me pick a lunch!</a></h3>
  HTML
end

get '/lunch' do
  x = rand(1..10)
  "you should eat: #{$foods[x]}"
end
