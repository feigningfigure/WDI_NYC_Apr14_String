require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/name' do
  name = params[:user_input].upcase
  @full_list = stocklookup(name)
  #Method 1:
  if @full_list.date.to_s == "N/A"
    @error = true
  else
    @error =false
  end

 #Method 2:
  # @full_list.each do |key,value|
  #   key.include? 'nil'
   # "Please Enter A Valid Stock Symbol!"
  # end
    # if @full_list.lastTrade == 0.0

  erb :name
end

def stocklookup(name)
 YahooFinance::get_standard_quotes(name)[name]
end

#Error message: Testing Method #3 using array.include? for symbols lookup
  # if $Symbol.include? != name
  #   "PLEASE ENTER A VALID SYMBOL!!"
  # else
  #   @full_list = stocklookup(name)
  # end


