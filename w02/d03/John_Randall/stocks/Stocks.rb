# ###Stock App
# - Build a Sinatra App that will take a stock symbol and return stock information
# - You should include a `layout.erb` and a css stylesheet. 

# - Set up a welcome page
# 	- Display "Welcome to WDI Stocks" when there is `GET` request to `/`
# - Define a method that makes a request to the `YahooFinance` api via the `YahooFinance` gem.
# 	- This method should take, as paramater, a stock ticker
# 	- This method should return data about the stock
# 	- Test this method manually in pry
	
# - Sample call
# ```
# YahooFinance::get_standard_quotes()
# ```

# - BONUS:
# 	- Explore the YahooFinance gem's documentation and add more than one piece of data. 
# 	- Think of a way to handle errors

# ###RENDER YOUR RESPONSE WITH ERB	



require 'sinatra'
require 'sinatra/reloader'
require 'YahooFinance'
require 'json'
require 'json/ext'
require 'pp'
require 'pry'


get '/' do 
  

  if params[:stock_code] != nil
    @stock_code = params[:stock_code].upcase
    
    @api_response = YahooFinance::get_standard_quotes(@stock_code)["#{@stock_code}"]
    
  end
    
    
  erb :welcome
end


