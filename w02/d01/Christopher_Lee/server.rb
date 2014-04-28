require 'sinatra'
require 'sinatra/reloader'

# HTTP VERB + URI Pattern + Block of Code
get "/" do
  "<h2>Hello World!</h2>"
end

get "/:name" do
  "Hello, my name is #{params[:name]}"
end

get "/:name/:meal" do
  "I'm #{params[:name]} and I love #{params[:meal]}"
end

get "/:operator/:number/:number2" do
  number1 = params[:number].to_i
  number2 = params[:number2].to_i

  case params[:operator]
    when "add"
      "The answer is #{number1 + number2}"
    when "minus"
      "The answer is #{number1 - number2}"
    when "multiply"
      "The answer is #{number1 * number2}"
    when "divide"
      "The answer is #{number1 / number2}"
    else
      "ERROR: Stop trying to do fancy stuff!"
  end

end
