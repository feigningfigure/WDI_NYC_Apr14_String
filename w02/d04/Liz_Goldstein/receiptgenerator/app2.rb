require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/receipt' do

last_order = File.open("./db/previous.txt", "w")
  description = params[:entered_description]
  cost = params[:entered_cost]
  # @description = params[:entered_description]
  # @cost = params[:entered_cost]
  last_order.write "\n#{description}\n #{cost}"
  last_order.close

  redirect "/receipt"
end

get '/receipt' do
old_receipt = File.open("./db/previous.txt", "r")
receipt_string = old_receipt.read
receipt_array = receipt_string.split("\n")
@description = receipt_array[1]
@cost = receipt_array[2]

erb :receipt
end

post '/receipt2' do
  last_order = File.open("./db/previous.txt", "w")
  description = params[:entered_description]
  cost = params[:entered_cost]
  # @description = params[:entered_description]
  # @cost = params[:entered_cost]
  last_order.write "#{description}\n #{cost}"
  last_order.close

  redirect "/receipt2"
end

get '/receipt2' do
old_receipt = File.open("./db/previous.txt", "r")
receipt_string = old_receipt.read

receipt_array = receipt_string.split("\n")
@description = receipt_array[1]
@cost = receipt_array[2]
erb :receipt2
end


