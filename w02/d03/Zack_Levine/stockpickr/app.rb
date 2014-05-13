require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/name' do
  @name = params[:user_name]
  erb :name
end




  def stocklookup(name)
      YahooFinance::get_standard_quotes(name)
  end

