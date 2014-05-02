# ##Part 2
# - Receipt Generator Online
# - Lets make a Sinatra version of the receipt generator
#   - The root should show a form with fields:
#     - Name
#     - Cost of good/services
#   - Upon pressing submit, the receipt file should be created and a confirmation message (i.e. "Your receipt has been printed!") should be shown to the user.
# - Generate all of your views using ERB.
# - Be sure to include a `layout.erb`
# - Include a stylesheet and be sure to style your views

# ***Bonus:***

# - Include a [Google Font](https://www.google.com/fonts) in your stylesheet


# ***Harder Bonus:***

# - Include a view to show the user the name and cost of goods/services from the last receipt that was created.

# ---
require 'sinatra'
require 'sinatra/reloader'



class Receipt_maker
  attr_reader :company_name, :thank_you_msg
  attr_reader :item_name, :item_cost
  attr_reader :previous_item_name, :previous_item_cost

  def initialize (item_name = "ERROR: Recipt_Maker: NO ITEM NAME", item_cost = "ERROR: Recipt_Maker: NO ITEM COST", company_name = "Particular Assembly Inc.", thank_you_msg = "Thank you! Goonies Never say die!")
    @item_name = item_name
    @item_cost = item_cost
    @company_name = company_name
    @thank_you_msg = thank_you_msg
  end

  def item_name=(new_item)
  	@previous_item_name = @item_name
  	@item_name = new_item
  end

  def item_cost=(new_cost)
  	@previous_item_cost = @item_cost
  	@item_cost = new_cost
  end

end

receipt_maker001 = Receipt_maker.new()






get '/' do
  erb :index
end

get '/receipt' do
    receipt_maker001.item_name = params[:item_name]
    receipt_maker001.item_cost = params[:item_cost]
    
    @item_name = receipt_maker001.item_name
    @item_cost = receipt_maker001.item_cost
		@company_name = receipt_maker001.company_name
    @thank_you_msg = receipt_maker001.thank_you_msg

    erb :receipt
end

get '/previous_transaction_receipt' do
		@item_name = receipt_maker001.previous_item_name
    @item_cost = receipt_maker001.previous_item_cost
		@company_name = receipt_maker001.company_name
    @thank_you_msg = receipt_maker001.thank_you_msg

    erb :previous_transaction_receipt
end
