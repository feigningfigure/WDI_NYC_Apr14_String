require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

get '/receipts' do
  receipts_file = File.open("./db/receipts.txt", "r")
  receipts_string = receipts_file.read
  @receipts_array = receipts_string.split("\n")
  erb :receipts
end

get '/receipts/new' do
  erb :new
end

# new route that processes form input
# and accepts "POST" requests
post '/receipts' do
   receipts_file = File.open("./db/receipts.txt", "a")

   # append new receipt to file
   receipt_name = params[:receipt_name]
   service_name = params[:service_name]
   cost_name = params[:cost_name]
   date_name = params[:date_name]

   # writes a new line with the receipt name to the file
   receipts_file.write "#{date_name}, receipt_name:#{receipt_name}, #{service_name}, #{cost_name}\n"

   # closes the file
   receipts_file.close

   redirect "/receipts"
end

# get'/receipts/new/goods' do

#   service_name = params[:service_name]

# a show page that shows only one receipt
get "/receipts/:id" do
  @receipt_id = params[:id]

  receipts_file = File.open("./db/receipts.txt", "r")
  receipts_string = receipts_file.read
  receipts_array = receipts_string.split("\n")
  receipts_array = receipts_string.split("receipt_name")
  @receipt_name = receipts_array[@receipt_id.to_i]
  # binding.pry
  erb :show
end

#

get "/receipts/:id/delete" do
  @receipt_id = params[:id]
  receipts_file = File.open("./db/receipts.txt", "r")
  receipts_array = receipts_file.readlines
  receipts_file.close
  # remove element from collection at given index
  receipts_array.delete_at(@receipt_id.to_i)
  # reopen the file for writing from beginning
  receipts_file = File.open("./db/receipts.txt", "w")
  # rewrite entire file with new contents
  receipts_file.puts receipts_array.join
  receipts_file.close
  "You deleted #{@receipt_id}"
end

# EDIT route

get '/receipts/:id/edit' do
  @receipt_id = params[:id]

  receipts_file = File.open("./db/receipts.txt", "r")
  receipts_string = receipts_file.read
  receipts_array = receipts_string.split("\n")
  @receipt_name = receipts_array[@receipt_id.to_i]

  erb :edit
end

post '/receipts/:id/update' do
  @new_receipt_name = params[:receipt_name]

  @receipt_id = params[:id]
  receipts_file = File.open("./db/receipts.txt", "r")
  receipts_array = receipts_file.readlines
  receipts_file.close

  # remove element from collection at given index
  receipts_array[@receipt_id.to_i] = "#{@new_receipt_name}\n"

  # reopen the file for writing from beginning
  receipts_file = File.open("./db/receipts.txt", "w")
  # rewrite entire file with new contents
  receipts_file.puts receipts_array.join
  receipts_file.close
  "You deleted #{@receipt_id}"

  "You updated the name to #{@new_receipt_name}"
end
