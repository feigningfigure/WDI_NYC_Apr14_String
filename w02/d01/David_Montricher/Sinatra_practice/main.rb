require 'sinatra'

get '/' do
  "Hello World!"
end

get '/:name/:meal' do
  "Hello my name is #{params[:name]} and I'm having #{params[:meal]}"
end

get '/:oper/:num1/:num2' do
   case params[:oper]
      when "add"
        "The result of the addition is #{params[:num1].to_i + params[:num2].to_i}"
      when "substract"
        "The result of the substraction is #{params[:num1].to_i - params[:num2].to_i}"
      when "multiply"
        "The result of the multiplication is #{params[:num1].to_i * params[:num2].to_i}"
      when "divide"
        "The result of the division is #{params[:num1].to_i / params[:num2].to_i}"
      else
        "Nothing fancy, please!"
  end
end
