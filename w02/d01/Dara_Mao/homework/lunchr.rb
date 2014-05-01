require 'sinatra'
require 'sinatra/reloader'
require_relative 'menu'

get '/' do
  "Help me pick a lunch!"
  "<html>
    <head>
      <title>Lunchr will pick a lunch menu for you today!</title>
    </head>
    <body>
      <h1>Pick lunch for me!</h1>
      <a href='/option'>Click here to test your luck</a>
    </body>
  </html>"
end

get '/option' do
  rand_index = rand(0..11)
  $lunch_decision = $menu[rand_index]
  " Lunch is ready! You are having #{$lunch_decision} for lunch."
end
