require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  "Hello World!"
  erb :index
end

get '/last_receipt' do
  receipt_file = File.open("./db/receipt_db.txt", "r")
  receipt_array = receipt_file.readlines.last(10) #testing this
  @last_receipt = receipt_array[0..4]
  receipt_file.close
  erb :last_receipt
end



get '/print_receipt' do
  receipt_file = File.open("./db/receipt_db.txt", "r")
  receipt_array = receipt_file.readlines
  @final_receipt = receipt_array.last(5)
  receipt_file.close
  erb :print_receipt
end

post '/print_receipt' do
  cost_of_goods = params[:cost_of_goods]
  customer_name = params[:customer_name]
  product = params[:product]
  receipt_file = File.open("./db/receipt_db.txt", "a")
  receipt_file.write"
    Consolidated Industries
    Thank you for visiting us, #{customer_name.capitalize}
    Good/Service Provided: #{product}
    Cost: $#{cost_of_goods}
    Thank you for your patronage"
  receipt_file.close
  redirect "/print_receipt"
end

