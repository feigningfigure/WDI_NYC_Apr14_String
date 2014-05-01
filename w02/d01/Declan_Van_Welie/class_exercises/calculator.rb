require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Welcome to the Calculatron!"
  "What would you like to do?"
  "(A)dd, (S)ubtract, (M)ultiply, or (D)ivide?"
end

get '/:function/:number1/:number2' do

  "Which two numbers would you like to #{params[:function]}?"
  if :function == "a"
    "#{params[:number1]}" + "#{params[:number2]}" == sum
    puts sum
  elsif :function == "s"
    "#{params[:number1]}" - "#{params[:number2]}" == remainder
    puts remainder
  else :function == "m"
    "#{params[:number1]}" * "#{params[:number2]}" == result
    puts result
  end
end


# get '/a/' do


# get '/:name/:meal' do
#   "I'm #{params[:name]}, and I love #{params[:meal]}"
# end
