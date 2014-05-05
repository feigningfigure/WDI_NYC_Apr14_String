require 'sinatra'
require 'sinatra/reloader'

get '/' do
@index = params[:index]
erb:index
end

get '/:function' do
  @function = params[:function]
  erb:function
end

get '/:function/:num1' do
  @num1 = params[:num1]
  erb:num1
end

get '/:function/:num1/:num2' do
  @num2 = params[:num2]
  erb:num2
end


