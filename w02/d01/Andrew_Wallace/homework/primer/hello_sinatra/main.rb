require 'sinatra'
# optional
require 'sinatra/reloader'

get "/name/:id" do
  "Hello #{params[:id].capitalize}"
end

get "/tea/:name1/:name2" do
  "#{params[:name1].capitalize} and #{params[:name2].capitalize} are having a lovely tea ceremony"
end

get "/battle/:name1/:name2" do
  name1_num = rand(1..6) + rand(1..6)
  name2_num = rand(1..6) + rand(1..6)
  if name1_num > name2_num
    "#{params[:name1].capitalize}'s #{name1_num} beats #{params[:name2].capitalize}'s #{name2_num}"
  elsif name1_num < name2_num
    "#{params[:name2].capitalize}'s #{name2_num} beats #{params[:name1].capitalize}'s #{name1_num}"
  else
    "It's a tie!  Roll dice again!"
  end
end

# SINATRIVIA
# get "/" do
# "Who was the first man in space?"
# end

# get "/:answer" do
#   if (params[:answer] == "yuri gagaran" || params[:answer] == "yuri_gagaran")
#     "Correct.  Who was the first man on the moon?"

#   elsif (params[:answer] == "neil armstrong" || params[:answer] == "neil_armstrong")
#       "Correct."
#   else
#       "That is incorrect.  Guess again."
#   end
# end

get "/" do
<<-HTML
<h1>Welcome to Andrew G. Wallace!</h1>
<h2>A sooper-cool about me page!</h2></br>

  <p>I'm an awesome person who loves basil pesto and movies!  Oh, and Ruby programming is cool too!</p>

  <a href="http://localhost:4567/contact">Contact Me!</a><br>
  <a href="http://localhost:4567/albums">Favorite Albums!</a>
HTML
end

get "/contact" do
<<-HTML
<h1>Contact</h1><br>
<p>andrew.g.wallace@gmail.com</p><br><br>
<a href="http://localhost:4567/">Home</a>
HTML
end


get "/albums" do
<<-HTML
<h1>Favorite Albums</h1></br>
<ul>
  <li><a href="https://www.youtube.com/watch?v=N5aVkVdFfLs">Save Rock and Roll - Fall Out Boy</a></li><br>
  <li><a href="http://lifeformed.bandcamp.com/track/9-bit-expedition">Lifeformed - Fastfall</a></li><br>
  <li><a href="http://www.youtube.com/watch?v=dFtzTb8uhdI">Hybrid - Keep in in the Family</a></li><br>
  <a href="http://localhost:4567/">Home</a>
</ul>
HTML
end


