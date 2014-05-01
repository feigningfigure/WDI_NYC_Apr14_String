require 'sinatra'
require 'sinatra/reloader'

get '/:operation/:num1/:num2'do
  case params[:operation]
    when "add"
      "The answer is #{params[:num1].to_f + params[:num2].to_f}"
    when "subtract"
      "The answer is #{params[:num1].to_f - params[:num2].to_f}"
    when "multiply"
      "The answer is #{params[:num1].to_f * params[:num2].to_f}"
    when "divide"
      "The answer is #{params[:num1].to_f / params[:num2].to_f}"
    else
      "ERROR: Stop trying to do fancy stuff."
    end
end


