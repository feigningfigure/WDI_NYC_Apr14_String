require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :index
end

get '/request' do
  @call = params[:YahooFinance::get_standard_quotes(call)]

end

  # [:stock] = YahooFinance::get_standard_quotes(stock)


  # def request(input)
  # YahooFinance::get_standard_quotes(input)
  # end


#   @call = params[request(call)]

#   erb:request

# end
  # YahooFinance::get_standard_quotes()




  # @call = request(ticker)

# end

# def request(ticker)
#   puts YahooFinance::get_standard_quotes(ticker)
# end


