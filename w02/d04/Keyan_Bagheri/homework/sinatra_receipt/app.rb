require 'sinatra'
require 'sinatra/reloader'


get '/' do

	erb :index
end

get '/add_first_item' do
	erb :add_first_item
end

get '/add_item' do
	erb :add_item
end

post '/add_first_item' do
	items = File.open("db/sales.txt", "w")
	items.write "Item: #{params[:product]} - Price: $#{params[:price].to_i}\n"
	items.close
	redirect '/add_item'
end

post '/add_item' do
	items = File.open("db/sales.txt", "a")
	items.write "Item: #{params[:product]} - Price: $#{params[:price].to_i}\n"
	items.close
	redirect '/add_item'
end

get '/receipt' do
  sales_ticket = File.open("db/sales.txt", "r")
  arggg = sales_ticket.read

  @end_receipt = arggg.split("\n")


  erb :receipt

end