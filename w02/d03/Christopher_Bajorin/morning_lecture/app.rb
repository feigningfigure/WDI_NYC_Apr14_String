require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

get'/name' do
  @name = params[:user_name]
  erb :name
end



# get '/:name' do
#   @name = params[:name]

#   erb :name
# end

# get '/:function/:num1/:num2' do
#   @function = params[:function]
#   @num1 = params[:num1].to_i
#   @num2 = params[:num2].to_i

#   @answer =
#   case @function
#   when "add"
#     @function = "+"
#     @num1 + @num2
#   when "subtract"
#     @function = "-"
#     @num1 - @num2
#   when "multiply"
#     @function = "*"
#     @num1 * @num2
#   when "divide"
#     @function = "/"
#     @num1 / @num2
#   end

#   erb :answer

# end

