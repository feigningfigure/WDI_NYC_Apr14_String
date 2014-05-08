require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @num = 1
  erb :blocks
end

get '/' do
  @num = params[:num].to_i
  erb :blocks
end

=begin
get'/kittens/:num' do
  #display :num number of kittens

  erb :index
end
=end
