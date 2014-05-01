require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'yahoofinance'




get '/' do
	erb :index	
end

get '/stock' do
	 @myquote = params[:user_stock].upcase
	@quote = YahooFinance::get_standard_quotes(
	@myquote)

		@date = @quote[@myquote].date
		@name = @quote[@myquote].name
		@dayhigh = @quote[@myquote].dayHigh
		@daylow = @quote[@myquote].dayLow


erb :stock
end



	# params: creates an empty hash and whay I type in is a value. the key is the name= in index.rb file
	



