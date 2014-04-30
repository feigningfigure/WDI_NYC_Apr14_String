require 'sinatra'
require 'sinatra/reloader'
require 'YahooFinance'
require 'pry'

get '/' do
  erb :index

end

get '/request' do
  @symbol = params[:ticker_symbol].upcase
  @quote = YahooFinance::get_standard_quotes(@symbol)
  @date = @quote[@symbol].date
  @name = @quote[@symbol].name
  @high = @quote[@symbol].dayHigh
  @low = @quote[@symbol].dayLow
  @open = @quote[@symbol].open
  @closed = @quote[@symbol].lastTrade
  @change_point = @quote[@symbol].changePoints
  @change_percent = @quote[@symbol].changePercent

  if  @change_point.to_i < 0
    @gain_loss = "loss"
  else
    @gain_loss = "gain"
  end

  if @date == "N/A"
  erb :error
  else
  erb :stock_info
  end
end
