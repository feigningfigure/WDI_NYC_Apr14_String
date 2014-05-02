require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
  erb :index
end

post '/print_receipt' do

    @service = params["good/service provided"]
    @cost = params["cost"]

    file = File.new("./public/receipts.txt", "w") puts<<TEXT
    "- Company Name: General Assembly"
    "- Good/Service Provided: #{params[:goods_services]}"
    "- Cost: #{params[:cost]}"
    "- Thank you for your patronage"
    file.close()
    TEXT

  redirect "/receipts.txt"
end
