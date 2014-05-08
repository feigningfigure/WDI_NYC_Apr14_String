require 'sinatra'
require 'sinatra/reloader'
require 'pry'




get '/' do
  
  erb :index
end

get '/:num' do
	@kittens = ['http://placekitten.com/g/200/300', 'http://placekitten.com/200/200', 'http://placekitten.com/100/300', 'http://placekitten.com/200/500', 'http://placekitten.com/200/400', 'http://placekitten.com/500/300']
	@num = params[:num].to_i
  # shows a form to input new post
  erb :view
end

