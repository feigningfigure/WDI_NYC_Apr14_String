require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'yahoofinance'




get '/' do
	erb :index	
end


	# params: creates an empty hash and whay I type in is a value. the key is the name= in index.rb file
get '/stock' do
	 @user_choice = params[:user_stock].upcase
	@quote = YahooFinance::get_standard_quotes(@user_choice)


		@date = @quote[@user_choice].date
		@name = @quote[@user_choice].name
		@dayhigh = @quote[@user_choice].dayHigh
		@daylow = @quote[@user_choice].dayLow


erb :stock
end



	



