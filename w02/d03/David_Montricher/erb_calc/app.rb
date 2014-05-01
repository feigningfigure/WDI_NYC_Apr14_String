require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/:oper/:num1/:num2' do
  @num1 = params[:num1]
  @num2 = params[:num2].to_i
  @oper = params[:oper].to_i

  case params[:oper]
  when "add"
    @result = num1 + num2
    erb: calc_solution.erb
  when "substract"
    @result = num1 - num2
    erb: calc_solution.erb
  when "multiply"
    @result = num1 * num2
    erb: calc_solution.erb
  when "divide"
    @result = num1 / num2
    erb: calc_solution.erb
end
