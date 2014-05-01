require 'sinatra'
require 'sinatra/reloader'

get '/:operation/:num1/:num2' do
  num1 = params[:num1].to_i #num1 and num2 don't tneed to be passed to the view folder
  num2 = params[:num2].to_i
  operation = params[:operation]

  case params[:operation]
  when "add"
    @result = num1 + num2 #result is an instance var because it needs to be passed to view folder
  when "subtract"
    @result = num1 - num2
  when "multiply"
    @result = num1 * num2
  when "divide"
    @result = num1 / num2
  else
    erb :error
  end
  erb :operation
end
