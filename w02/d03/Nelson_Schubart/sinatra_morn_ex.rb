require 'sinatra'

get '/' do
  "Good morning"
end

get '/' do
  "Good morning"
end

get '/:some_place' do
  "Welcome to #{params[:some_place]}"
end

