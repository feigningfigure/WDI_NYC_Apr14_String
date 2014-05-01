require 'sinatra'
require 'sinatra/reloader'

get '/'  do
  erb :index

end

get '/name' do
  @name = params[:user_name]

  erb :name

end

get '/mood' do
  @mood = params[:user_mood]
  erb :mood
end
