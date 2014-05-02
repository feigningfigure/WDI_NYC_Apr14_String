require 'sinatra'
require 'sinatra/reloader'
require_relative 'foods'


get "/" do
<<-HTML

<a href="http://localhost:4567/foods"><h1>help me pick lunch</h1></a>
HTML
end

get "/foods" do
     food_suggestion = rand(0..9)
     "I feel like eating  #{$foods[food_suggestion]}"
end







