require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

get '/print_receipt' do
  @company_name = params[:name]
  @good_services_provided = params[:name]
  @amount_paid = params[:name]
  erb :print_receipt

end

