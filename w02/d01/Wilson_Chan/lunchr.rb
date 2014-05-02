require 'sinatra'
require 'sinatra/reloader'

# unsure about how to solve this challenge
get "/" do
  menu = "<a href = @lunch><h3>Help me pick a lunch!</h3></a>"
  menu = ["Hamburgers", "Hot Dogs", "Sandwiches", "Sushi", "BLT", "Egg McMuffin", "Bulgogi", "Turkey Sandwich", "Pastrami", "Hummus"].shuffle
end

