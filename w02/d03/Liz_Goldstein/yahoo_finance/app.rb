require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'
# require 'pry'


get '/' do
	erb :index
end

# get '/stock?stock_name=' do
# 	erb :error
# end

get '/stock' do
	stock = params[:stock_name].upcase
	info = YahooFinance::get_standard_quotes(stock)
	@symbol = info[stock].symbol
	@change = info[stock].change
	@dayhigh = info[stock].dayHigh
	@daylow = info[stock].dayLow
	@time = info[stock].time


	actual_change = @change.split(" ")[0].to_f

	@happy_or_sad =
	if actual_change < 0
		"SORRY FOR YOUR LOSS :( "
	elsif actual_change > 0
		"CONGRATULATION$ ON YOUR GAIN!"
	else
		"No gains or losses today..."
	end

if info[stock].dayHigh == 0
	erb :error
else
	erb :stock
end


end

# get '/stock?stock_name=nil' do
# 	erb :error
# end
