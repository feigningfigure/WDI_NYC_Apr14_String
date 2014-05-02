require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
  erb :index
end

post '/receipt' do
  @company_name = params[:company_name]
  @service = params[:service]
  @cost = params[:cost]
  erb :receipts
end
