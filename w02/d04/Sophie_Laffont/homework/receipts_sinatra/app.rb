require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
	erb :index
end

post '/save_receipt' do

	receipt_file = File.open("./wallet/receipt.txt", "w") #overwrite the file
	company = params[:company]
	service = params[:service]
	cost = params[:cost] 
	receipt_file.write "Company: #{company}\n Service: #{service}\n Cost: #{cost}\nThank you for your patronage and please pay on time!" 

	receipt_file.close
	redirect '/show_receipt' # '/'  this indicates a route
end

get '/show_receipt' do

receipt_file = File.open("./wallet/receipt.txt", "r" )
receipt_file.read "Company: #{company}\n Service: #{service}\n Cost: #{cost}\nThank you for your patronage and please pay on time!" 
	receipt_file.close
	erb :show

end




