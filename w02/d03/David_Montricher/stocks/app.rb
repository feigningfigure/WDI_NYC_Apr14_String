require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/stock_data' do
  # @stock_symbol = params[:stock_symbol]

  if YahooFinance::get_standard_quotes(params[:stock_symbol].to_s)[params[:stock_symbol].to_s].class == YahooFinance::StandardQuote && YahooFinance::get_standard_quotes(params[:stock_symbol].to_s)[params[:stock_symbol].to_s].dayRange != "N/A - N/A"
      @stock_data = YahooFinance::get_standard_quotes(params[:stock_symbol].to_s)
  else
      @stock_data = "THAT IS NOT A STOCK TICKER"
      erb :error
  end
   # @stock_data = YahooFinance::get_standard_quotes("GOOG")["GOOG"].class
  erb :stock_data
end

