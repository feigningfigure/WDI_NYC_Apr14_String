require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello!"
end

get '/name/:name' do
    "Hello #{params[:name].capitalize}!"
end
