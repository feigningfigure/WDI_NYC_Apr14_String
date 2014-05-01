require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/ticker' do
  @ticker = YahooFinance::get_standard_quotes(params[:ticker])
  erb :request
end
