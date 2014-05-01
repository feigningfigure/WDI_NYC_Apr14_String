require "yahoofinance"
require "sinatra"
require "sinatra/reloader"
require "pry"


get '/' do 
	erb :index
end

get '/quote' do
	quote = params[:quote_request].upcase

	@quote = YahooFinance::get_standard_quotes(quote)[quote].symbol

	@quote_name = YahooFinance::get_standard_quotes(quote)[quote].name 

	@quote_lastTrade = YahooFinance::get_standard_quotes(quote)[quote].lastTrade
	
	@quote_change = YahooFinance::get_standard_quotes(quote)[quote].change
	
	@quote_previousClose = YahooFinance::get_standard_quotes(quote)[quote].previousClose
	
	@quote_open = YahooFinance::get_standard_quotes(quote)[quote].open
	
	@quote_dayLow = YahooFinance::get_standard_quotes(quote)[quote].dayLow
	
	@quote_volume = YahooFinance::get_standard_quotes(quote)[quote].volume
	
	@quote_dayRange = YahooFinance::get_standard_quotes(quote)[quote].dayRange
	
	@quote_dayHigh = YahooFinance::get_standard_quotes(quote)[quote].dayHigh
	
	@quote_lastTradeWithTime = YahooFinance::get_standard_quotes(quote)[quote].lastTradeWithTime
	
	@quote_averageDailyVolume = YahooFinance::get_standard_quotes(quote)[quote].averageDailyVolume
	
	@quote_bid = YahooFinance::get_standard_quotes(quote)[quote].bid	
	
	@quote_ask = YahooFinance::get_standard_quotes(quote)[quote].ask


	

	erb :quote
end

else
	puts "ERROR"
end
