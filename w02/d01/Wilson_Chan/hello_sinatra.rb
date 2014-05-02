require 'sinatra'
# require 'sinatra/reloader'


get "/" do
  "<h1>Hello World!</h1><p>This is a smaller paragraph</p>"
end

get '/name/:name' do
  "Hey there, my name is #{params[:name]}"
end

get '/band/:band' do
  "<h1>#{params[:band]}</h1> is playing live tonight!"
end
