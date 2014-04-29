require 'sinatra'
require 'sinatra/reloader'

#Primer 1: Hello, Sinatra!
get '/name/:user_name' do
  "Hello, #{params[:user_name]}"
end

#Primer 2: It takes two to Sinatra
get '/:option/:name1/:name2' do
  case params[:option]
  when "tea"
    "#{params[:name1]} and #{params[:name2]} are having a lovely tea ceremony."

  when  "battle"
    "#{params[:name2]} beats #{params[:name1]} ."
  else
    "ERROR: Stop it, you idiot."
  end
end

#Primer 3: Sinatrivia
get '/' do
  "Who was the first man in space?"
end

rand_ind = rand(0,1)

if arr[0] == arr[rand_ind]
  get '/yuri_gagarin' do
    "Correct. Who was the first man on the moon?"
  end

else
  get '/neil_armstrong' do
    "Correct. etc."
  end
end

#Primer 4: Sinatra + HTML
get '/' do
  "About me: Dara Mao"
end

get '/contact' do
  "dara.mao@gmail.com"
end

get '/albums' do
  "My favorite albums are: <p>Songs of Faith and Devotion by Depeche Mode</p><p>Dummy by Portishead</p><p>Power, Corruption & Lies by New Order</p>"
end
