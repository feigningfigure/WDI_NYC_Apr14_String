require 'sinatra'
require 'sinatra/reloader'

get '/' do
  redirect '/play'
end

get '/play' do
erb :play

end


