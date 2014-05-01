require 'sinatra'

get '/' do
  # need to link the .erb file that contains instructions for this '/' call
  erb :index
end

get '/name' do
  @name = params[:name]
  erb :name
end

