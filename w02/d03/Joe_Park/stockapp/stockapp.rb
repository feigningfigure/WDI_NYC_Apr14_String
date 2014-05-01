require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'
require 'pry'



get '/' do
  erb :index
end

get '/name' do
  
	# binding.pry

  @name = params[:ticker].upcase
  @options = params[:options]

  @quote = YahooFinance::get_standard_quotes(@name)[@name]

  # if options = 'all'
  # 	@result = @quote
  # else 
  # 	@result = @quote.options
  # end
    @high = @quote.dayHigh
    @low = @quote.dayLow
    @company_name = @quote.name
    @volume = @quote.volume
   	@time = @quote.time
   	@date = @quote.date
   	@previous = @quote.previousClose
    @all = "High = #{@high}\n Low = #{@low}\n Volume #{@volume}\n Previous Close = #{@previous}"

  if @high.to_i <= 0
    erb :error
  else
    erb :name
  end
end

#case when for methods?

# get '/name/value' do

# get '/name/choice' do

# 	@choice = params[:choice]

# 	erb :choice
# end



# @choice = @name[@name].dayHigh


# get '/name/info' do

#   @info = params[:values]

#   @info = quote[@name].dayHigh

#   erb :info

# end
