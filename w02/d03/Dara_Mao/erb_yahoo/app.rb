require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/name' do
  name = params[:user_input]
  @full_list = stocklookup(name)
  if @full_list.lastTrade.to_f == 0.0
    "Please Enter A Valid Stock Symbol!"
  else
    @full_list = stocklookup(name)
  end
  erb :name
end

# def stocklookup(name)
#  YahooFinance::get_standard_quotes(name)[name]
# end

def stocklookup(name)
 YahooFinance::get_standard_quotes(name)[name]
end


  # if $Symbol.include? != name
  #   "PLEASE ENTER A VALID SYMBOL!!"
  # else
  #   @full_list = stocklookup(name)
  # end


