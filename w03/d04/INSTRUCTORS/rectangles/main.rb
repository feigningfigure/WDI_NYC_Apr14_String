require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @num = 1
  erb :blocks
end

get '/:num' do
  @num = params[:num].to_i
  erb :blocks
end
