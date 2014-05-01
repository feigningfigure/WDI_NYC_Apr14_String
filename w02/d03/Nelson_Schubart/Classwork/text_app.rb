require 'sinatra'
require 'pry'

get '/' do
  erb :index_calc
end

get '/:name' do
  #binding.pry
  @name = params[:user_name]
  erb :name_text
end
