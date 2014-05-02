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







## Top
require 'sinatra'
require 'sinatra/reloader'
require 'pry'


 
### Classes

class Receipt_maker

  attr_reader :company_name, :thank_you_msg_single, :thank_you_msg_multiple, :transactions_array

  def initialize (company_name = "Particular Assembly Inc.", thank_you_msg_single = "Thank you! Goonies Never say die!", thank_you_msg_multiple = "thanks for all of your business.\n 'This one is my wish, and I'm taking it back.'")
    @company_name = company_name
    @thank_you_msg_single = thank_you_msg_single
    @thank_you_msg_multiple = thank_you_msg_multiple
    load_transaction_log_from_disk()
  end

  def add_to_transaction_log(item_name, item_cost)
    @transactions_array << Transaction.new(item_name, item_cost, @transactions_array)
    save_transaction_log_to_disk()
  end

  def last_transaction
    transactions_array.last
  end

  def save_transaction_log_to_disk(log_file= "./db/transaction_log.txt")
      log_file = File.open(log_file, "w")
      log_file.puts Marshal.dump(@transactions_array)
      log_file.close
  end

  def load_transaction_log_from_disk(log_file= "./db/transaction_log.txt")
    if File.exist?(log_file)
      log_file = File.open(log_file, "r")
      log_file_string = log_file.read
      @transactions_array = Marshal.load(log_file_string)
    else
      @transactions_array = []
    end
  end

end


class Transaction

  attr_reader :item_name, :item_cost, :transaction_time, :transaction_serial

  def initialize(item_name, item_cost, destination_array)
    @transaction_serial = destination_array.length
    @transaction_time = Time.now()
    @item_name = item_name
    @item_cost = item_cost
  end

end



### Instantiate

receipt_maker001 = Receipt_maker.new()



### ERB

get '/' do
  @current_time = Time.now()
  erb :index
end

get '/transaction_confirmation' do
  receipt_maker001.add_to_transaction_log(params[:item_name], params[:item_cost])

  @transaction_serial = receipt_maker001.transactions_array.last.transaction_serial
  @transaction_time = receipt_maker001.transactions_array.last.transaction_time
  @item_name = receipt_maker001.transactions_array.last.item_name
  @item_cost = receipt_maker001.transactions_array.last.item_cost
  @company_name = receipt_maker001.company_name
  @thank_you_msg_single = receipt_maker001.thank_you_msg_single

  erb :transaction_confirmation
end

get '/previous_transaction' do
  @transactions_array = []
  @transactions_array[0] = receipt_maker001.last_transaction
  @company_name = receipt_maker001.company_name
  @thank_you_msg = receipt_maker001.thank_you_msg_single
  erb :transaction_log
end

get '/transaction_log' do
  @transactions_array = receipt_maker001.transactions_array  
	@company_name = receipt_maker001.company_name
  @thank_you_msg = receipt_maker001.thank_you_msg_multiple
  erb :transaction_log
end



















