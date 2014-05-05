require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'yahoofinance'



get '/' do
	erb :index	
end

# get '/result' do
# 	YahooFinance::get_quotes( quote_type, quote_symbols ) do |qt|
#     puts "QUOTING: #{qt.symbol}"
#     puts qt.to_s
end
	binding.pry
	@result = YahooFinance::get_standard_quotes(params[:ticker])[:ticker]

	erb :result
end
