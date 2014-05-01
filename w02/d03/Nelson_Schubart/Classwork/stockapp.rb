#In pry:
#YahooFinance::get_standard_quotes(“GOOG”)
#“GOOG”
#  quote[“GOOG”]
#  quote[“GOOG”].dayHigh
#  quote[“GOOG”].change

require 'sinatra'
require 'sinatra/reloader'
require 'YahooFinance'

get '/' do
  erb :stock_welcome
end

get '/:ticker' do
  user_input = params[:ticker]
  quote = YahooFinance::get_standard_quotes(user_input)
  @name = quote[user_input].name
  @symbol = quote[user_input].symbol
  @open = quote[user_input].open
  @lasttrade = quote[user_input].lastTrade
  @changePoints = quote[user_input].changePercent
  @changePercent = quote[user_input].changePoints
  erb :stock_index
end
