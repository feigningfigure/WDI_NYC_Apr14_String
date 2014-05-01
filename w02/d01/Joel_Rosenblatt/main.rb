require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
end

get '/:operation/:first/:second' do
  case params[:operation]
  when "add"
    "#{params[:first].to_i + params[:second].to_i}"
  when "subtract"
    "#{params[:first].to_i - params[:second].to_i}"
  when "multiply"
    "#{params[:first].to_i * params[:second].to_i}"
  when "divide"
    "#{params[:first].to_i / params[:second].to_i}"
  else
    "Not a valid operation. Add, subtract, multiply, divide."
  end
end
