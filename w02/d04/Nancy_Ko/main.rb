require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do 
	erb :index
end

get '/name' do
	@company_name = params[:company_name]
	# getting the name from the user
	company_name = File.open("../db/receipt.txt" "w")


end 

get '/service' do
	@service = params[:service]
	@service = File.open("../db/receipt.txt" "w")
end

get '/cost' do
	@cost = params[:cost]
	@cost = File.open("../db/receipt.txt" "w")

end




