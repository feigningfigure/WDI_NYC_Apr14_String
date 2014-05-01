require 'sinatra'

get '/' do
  erb :welcome_calc
end

get '/:perform/:number1/:number2' do
  perform = params[:perform]
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  case params[:perform]
    when "addition"
      @result = number1 + number2
    when "subtraction"
      @result = number1 - number2
    when "multiplication"
      @result = number1 * number2
    when "division"
      @result = number1 / number2
    else
      erb :error
    end
    erb :index_calc
end
