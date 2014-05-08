require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection({
  database: "wdi_lunch",
  adapter: "postgresql"
})

require_relative 'models/lunch'

get '/' do
	@lunches = Lunch.all
	erb :index
end

get '/add' do
	erb :add
end

post '/add' do
	# lunch_name = params[:lunch_name]
	# rating = params[:rating]

	Lunch.create(
	lunch_name: params[:lunch_name],
	rating: params[:rating]
	)
	redirect "/"
end
