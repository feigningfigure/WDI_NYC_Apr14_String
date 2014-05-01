require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "<h2>Hello world!</h2>
    <p>Hopelessly indecisive about lunch?</p>
    <p><a href='\/lunch/'>CLICK HERE</a></p>
    <p>It's like Russian Roulette... for LUNCH!"

end

get '/lunch/' do
  choice = ['Chopt', 'Indikitch', 'Dig Inn', 'Mcdonalds', '11 Madison', 'Shake Shack', 'Haru', 'the flafel guy', 'Heartland Brewery']
  "<p>You're going to: #{choice.sample}</p>
  <p>Bon Appetite!</p>
  <p>You should probably bring lunch, you know... but you wont</p>"

end
