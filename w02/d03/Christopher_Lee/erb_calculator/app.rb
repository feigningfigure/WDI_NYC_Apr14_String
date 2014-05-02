require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/:test' do
  @test = params[:test]
  erb :test
end


get '/:operator/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
  case params[:operator]
    when "add"
      erb :add
      # "The answer is #{number1 + number2}"
    when "minus"
      # "The answer is #{number1 - number2}"
    when "multiply"
      # "The answer is #{number1 * number2}"
    when "divide"
      # "The answer is #{number1 / number2}"
    else
      # "ERROR: Stop trying to do fancy stuff!"
  end
end
