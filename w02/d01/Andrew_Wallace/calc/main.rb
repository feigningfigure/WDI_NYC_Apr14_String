require 'sinatra'

get '/:operation/:num1/:num2' do
     case params[:operation]

     when "add"
          "#{params[:num1].to_i + params[:num2].to_i}"

     when "subtract"
          "#{params[:num1].to_i - params[:num2].to_i}"

     when "divide"
          "#{params[:num1].to_i / params[:num2].to_i}"

     when "multiply"
          "#{params[:num1].to_i * params[:num2].to_i}"
     else
          "ERROR: Stop trying to do fancy stuff!"
     end
end
