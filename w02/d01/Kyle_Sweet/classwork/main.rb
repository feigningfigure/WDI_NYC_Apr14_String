require 'sinatra'
require 'sinatra/reloader'


# get "/" do
#   "calculator!"
# end

# get '/:num' do
#   "#{params[:num].to_i}"
# end

# get '/:num/:add' do
#   "#{params[:num].to_i} #{params[:add]}"
# end

# get '/:num/:add/:num2' do
#   "#{params[:num].to_i}" + "#{params[:num2].to_i}"
# end

# get '/:num/:add/:num2/:equals' do
#   "#{params[:num].to_i}"+"#{params[:num2].to_i}"
# end

get '/:operation/:num1/:num2' do
case params[:operation]
 when "add"
   "The answer is #{params[:num1].to_i + params[:num2].to_i}"
when "subtract"
   "The answer is #{params[:num1].to_i - params[:num2].to_i}"
when "multiply"
   "The answer is #{params[:num1].to_i * params[:num2].to_i}"
when "divide"
   "The answer is #{params[:num1].to_i / params[:num2].to_i}"
else "operation not available"
  end
end
