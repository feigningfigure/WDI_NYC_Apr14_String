require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/lunch'


get '/' do 
	@lunch_item = Lunch.all
	erb :index
end

post '/lunches' do
  # processes new post data
	lunch_name = params[:lunch_name]
	rating = params[:rating]

	# INSERT INTO products (name, price, description, quantity) VALUES('#{name}', '#{price}', '#{description}', '#{quantity}');
	Lunch.create(
		lunch_name: lunch_name,
		rating: rating
	)
	redirect "/"
	end