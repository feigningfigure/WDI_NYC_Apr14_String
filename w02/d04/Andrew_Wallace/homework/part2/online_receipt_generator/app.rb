
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/make_receipt' do
  #OPEN THE FILE, DROP CURSOR INTO IT
    transaction_file = File.open("./db/last_transaction.txt", "a")
  # RECIEVING DATA FROM PREVIOUS PAGE< ASSIGNIN TO LOCAL VARIABLE
    @item_name = params[:item_name]
    @item_cost = params[:item_cost]

    #SENDING TEXT TO CURSOR
    transaction_file.puts <<-PUTSTOFILE
    #{@item_name}
    #{@item_cost}
    PUTSTOFILE


    # ta[0]=ta[2]
    # ta[1]=ta[3]
    # ta[2]=@item_name.to_s
    # ta[3]=@item_cost.to_f


    # Close and Save
    transaction_file.close

    erb :make_receipt
end



# DISPLAY LAST TRANSACTION
get "/read_receipt" do
  transaction_file = File.open("./db/last_transaction.txt", "r")
  transaction_string = transaction_file.read
  transaction_array = transaction_string.split("\n")
  @item_name = transaction_array[-2]
  @item_cost = transaction_array[-1]
  erb :read_receipt
end



get "/read_older_receipt" do
  transaction_file = File.open("./db/last_transaction.txt", "r")
  transaction_string = transaction_file.read
  transaction_array = transaction_string.split("\n")
  @item_name = transaction_array[-4]
  @item_cost = transaction_array[-3]
  erb :read_older_receipt
end




# #UPDATE LAST TRANSACTION

# post '/last_receipt/update' do

#   @item_name = params[:item_name]
#   @item_cost = params[:item_cost]
#   @new_transaction = params[:receipt]

#   @item_name = params[:item_name]
#   transaction_file = File.open("./db/last_transaction.txt", "r")
#   transaction_array = transaction_file.readlines
#   transaction_file.close

#   # remove element from collection at given index
#   transaction_array[@item_name.to_i] = "#{@new_transaction}\n"

#   # reopen the file for writing from beginning
#   transaction_file = File.open("./db/last_transaction.txt", "w")
#   # rewrite entire file with new contents
#   transaction_file.puts transaction_array.join
#   transaction_file.close
#   "You deleted #{@item_name}"

#   "You updated the name to #{@new_transaction}"
# end


#DELETE TRANSACTION

# get "/:last_transaction/delete" do
#   @item_name = params[:last_transaction]
#   transaction_file = File.open("./db/last_transaction.txt", "r")
#   transaction_array = transaction_file.readlines
#   transaction_file.close
#   # remove element from collection at given index
#   transaction_array.delete_at(@item_name.to_i)
#   # reopen the file for writing from beginning
#   transaction_file = File.open("./db/last_transaction.txt", "w")
#   # rewrite entire file with new contents
#   transaction_file.puts transaction_array.join
#   transaction_file.close
#   "You deleted #{@item_name}"
# end

# get '/last_transaction' do
#  last_transaction = File.open("./db/last_transaction.txt", "w")
# end








# write file in append mode - let is grow infiniately. #OR trim it

# LAST RECIPT (JUST ENTERED)
#   @item_name = transaction_array[-2]
#   @item_cost = transaction_array[-1]

# PREVIOUS TO JUST NOW LAST RECIPT
#   @item_name = transaction_array[-4]
#   @item_cost = transaction_array[-3]
