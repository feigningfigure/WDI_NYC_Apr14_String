require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/receipt' do
  @company_name = params[:company_name]
  @good_service = params[:good_service]
  @price = params[:price]

  receipts_dir = Dir.mkdir("./receipts")

  receipt_txt = File.open("./receipts/receipt.txt", "w")

  receipt_txt.puts <<-TXT

  -Company Name: #{@company_name}
  -Good/Service Provided: #{@good_service}
  -Cost: #{@price}

  Thank you for your patronage

  TXT

  erb :receipt
end
