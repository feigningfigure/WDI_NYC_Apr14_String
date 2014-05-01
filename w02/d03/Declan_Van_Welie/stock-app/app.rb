require 'sinatra'
require 'sinatra/reloader'
require 'YahooFinance'

get '/' do

  erb :index

  end

get '/stock' do

  @stock = params[:stock_name]

  @info = params[:stock_info]

  # choice = (YahooFinance::get_standard_quotes("#{@stock}.#{info}"))

  # stock_choice = choice[choice.keys[0]]

  # @data = YahooFinance::get_standard_quotes(@stock_info_choice)

  # if @data[@info] == @info

  erb :stock_info

end
