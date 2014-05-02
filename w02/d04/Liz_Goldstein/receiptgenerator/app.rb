require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/receipt' do
  @description = params[:entered_description]
  @cost = params[:entered_cost]
  $previous = [@description, @cost]
  erb :receipt

end

# get '/receipt2' do
#   @previous_cost = $previous[0]
#   erb :receipt2
# end
