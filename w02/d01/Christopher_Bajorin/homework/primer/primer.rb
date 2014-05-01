require 'sinatra'
# optional
require 'sinatra/reloader'


# Hello, Sinatra!
# get "/name/:name" do
#   "Hello #{params[:name].capitalize}!"
# end

# It takes two to Sinatra
# get "/tea/:name1/:name2" do
#   "#{params[:name1]} and #{params[:name2]} are having a lovely tea ceremony."
# end

# get "/battle/:name1/:name2" do
#   name1 = params[:name1]
#   name2 = params[:name2]
#   random = rand(1..2)
#   if random == 1
#     "#{params[:name1]} beats #{params[:name2]}"
#    else
#     "#{params[:name2]} beats #{params[:name1]}"
#   end
# end

# Sinatrivia
# get '/' do
#   "Who was the first person in space?"
# end


# get '/:answer' do

#   if (params[:answer] == "yuri gagaran"  || params[:answer] == "yuri_gagaran")
#     "Correct. Who was the first man on the moon?"
#   elsif (params[:answer] == "neil armstrong" || params[:answer] == "neil_armstrong")
#     "Correct."
#   else
#     "Incorrect. Try again"
#   end
# end

# Sinatra + HTML

get '/' do
  <<-HTML
  <h1>Hi I'm Chris. I'm AWESOME! What... do... you... WANT?!?!</h1><br>
  <h3><a href="http://localhost:4567/contact"> Contact </a><br>
  <h3><a href="http://localhost:4567/albums"> Check out my favorite music </a></h3>

  HTML
end

get '/contact' do
  <<-HTML
  <h3>Chris Bajorin<br>
    cell: 914-589-6955<br>
    git: cdbajorin<br>
    email: christopher.bajorin@gmail.com</h3>

    <p><a href="http://localhost:4567/">Home</a></p>
  HTML
end

get '/albums' do
  <<-HTML
  <h1><b>My Favorite Albums</b></h1><br>
  <h3><a href="http://youtu.be/_3maaBk9vOw">Fantasy on Rossini's Moses in Egypt</a><br>
    <a href="http://youtu.be/8oxIKgelG54">Fantasy on Bellini's La Sonnambula</a><br>
    <a href="http://youtu.be/xDycHnUxjRQ">Fantasy on Donizetti's Don Pasquale</a><br></h3><br><br>
    <p><a href="http://localhost:4567/">Home</a></p>
  HTML
end
