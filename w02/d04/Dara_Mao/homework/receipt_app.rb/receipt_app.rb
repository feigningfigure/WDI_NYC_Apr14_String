require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/enter' do
  print_receipt = File.open("./db/goods_service.txt", "a")
  @type_goods = params[:goods_input]
  @cost_goods = params[:cost_input]
  #add to hash: type_goods to key and cost_goods to value
  print_receipt.write "#{type_goods} costs #{cost_goods}/n"
  print_receipt.close
  redirect "/enter"
end

get '/print_receipt' do
  print_receipt = File.open("./db/goods_service.txt", "r")
  goods_list = print_receipt.read
  @goods_service_hash = print_receipt.split(",")
  erb :print_receipt
end
