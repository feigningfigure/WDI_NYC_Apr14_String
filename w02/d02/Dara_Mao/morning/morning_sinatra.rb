require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Good Morning"
end


get '/:some_place' do
  "Welcome to #{params[:some_place]}"
end

