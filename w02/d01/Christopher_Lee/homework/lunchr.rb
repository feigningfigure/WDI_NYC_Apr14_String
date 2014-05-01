require 'sinatra'
require 'sinatra/reloader'

$choices = ["burrito","chicken","bread","fruit","chips","sandwich","yogurt","pita","burger","wontons"]

get "/" do
 "<a href = 'http://localhost:4567/lunches'><h1>Help me pick a lunch</h1></a>"
 # shuffled = $choices.shuffle
 # "#{shuffled[0]}"
end

get "/lunches" do
 shuffled = $choices.shuffle
 "You should eat a #{shuffled[0]}"
end
