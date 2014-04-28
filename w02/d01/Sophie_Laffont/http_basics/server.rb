require 'sinatra'
require 'sinatra/reloader'



# simple request GET http://www.google.com/users
# document = HTTParty.get("http://www.google.com/users")
# puts document

# HTTP VERB + URI Pattern + Block of Code
#  localhost:4567
# get "/" do
#   "<h1>Hello World!</h1><p>This should be smaller</p>"
# end

# params is an invisible hash that you can manipulate
#it creates a key
get '/:operation/:num1/:num2' do

  case params[:operation]

  when "add"
  "the answer is #{params[:num1].to_i+params[:num2].to_i}"

    when "subtract"
      "the answer is #{params[:num1].to_i - params[:num2].to_i}"

    when "multiply"
      "the answer is #{params[:num1].to_i * params[:num2].to_i}"

    when "divide"
      .to_i"the answer is #{params[:num1].to_i / params[:num2].to_i}"
    end
end



