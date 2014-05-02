require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
	erb :index
end

post '/receipt' do 

	Dir.mkdir("db") unless File.exist?("db")
	db = File.open("db/prices.txt", "a")

	name = params[:name]
	price = params[:price]

	db.write "#{name}\n"
	db.write "#{price}\n"
	db.close

	redirect "/receipt"

end

get '/receipt' do	
	erb :receipt

end

get '/history' do

	history = File.open("db/prices.txt", "r")
	history_string = history.read 
	history_array = history_string.split
	hash = Hash[*history_array]

	# binding.pry
	@history = []
	hash.each do |k, v|
	@history << "#{k} costs #{v}$"
	# binding.pry
	end
	@history_final = @history.join("\n ||| ")
	#binding.pry
	

	erb :history
end







