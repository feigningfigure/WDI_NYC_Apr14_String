require 'sinatra'
require 'sinatra/reloader'


get '/' do
  "<h1>Good Morning</h1>"
end


get '/:some_place' do
  "<h1>Welcome to #{params[:some_place]}</h1>"
end
