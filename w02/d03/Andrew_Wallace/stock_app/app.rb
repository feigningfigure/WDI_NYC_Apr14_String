require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'YahooFinance'

def stock_call(stockname)
return YahooFinance::get_standard_quotes(stockname)
end

get '/' do
erb :index
end

get '/stocks' do
@stockname = params[:stockname]
@quote = stock_call(@stockname)

erb :stocks
end

# in stocks.erb adding "=" after <% will show value of line

# in termainal require 'yahoofinance', must return true
# input
# YahooFinance
# input
# quote = YahooFinance::get_standard_quotes("GOOG")
# input
# pp quote
# pp stands for 'pretty print'
# input
# quote.keys
# method that shows all the keys in the hash
# "GOOG" is the key in the quote hash, the value of the quote has instance variables
# input
# quote["GOOG"]
# the object returns
# input
# quote["GOOG"].dayHigh
# quote["key"].@instance_variable
