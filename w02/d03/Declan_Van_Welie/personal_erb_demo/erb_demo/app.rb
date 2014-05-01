require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do

erb :index

end

get '/:name' do
binding.pry

  @name = params[:name]

  erb :name
end

get '/photos' do
  params.to_s
end
