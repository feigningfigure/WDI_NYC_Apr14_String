require 'sinatra'
require 'sinatra/reloader'


get '/' do
	erb :index
end

get '/:operation/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  operation = params[:operation]

case params[:operation]
  when "add"
    @result = num1 + num2
  when "subtract"
    @result = num1 - num2
  when "multiply"
    @result = num1 * num2
  when "divide"
    @result = num1 / num2
  else
    @result = "Error!"
  end

  erb :calc

end
