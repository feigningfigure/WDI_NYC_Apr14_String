require 'sinatra'
require 'sinatra/reloader'

get '/:operation/:num1/:num2' do
  case params[:operation]
  when "add"
    @result = params[:num1].to_i + params[:num2].to_i
  when "subtract"
    @result = params[:num1].to_i - params[:num2].to_i
  when "multiply"
    @result = params[:num1].to_i * params[:num2].to_i
  when "divide"
    @result = params[:num1].to_i / params[:num2].to_i
  else
    "ERROR: Stop trying to do fancy stuff!"
  end
  erb :calc
end
