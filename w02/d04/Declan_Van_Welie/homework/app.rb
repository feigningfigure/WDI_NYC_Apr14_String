require 'sinatra'
require 'sinatra/reloader'

get '/' do
erb :index
end

# get '/info' do
#   erb :info
# end

post '/receipt' do
  company_name = params[:company_name]
  service = params[:service]
  cost = params[:cost]
  erb :receipt
end

