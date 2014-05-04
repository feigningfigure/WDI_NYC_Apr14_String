# ##Part 1
# - Command line Receipt Generator
#   - Ask for the name of the good/service provided
#   - Ask for the cost of the good/service provided
#   - Print a receipt
#     - Here is an example of what the receipt file might look like:

# ```
# - Company Name: Particular Assembly Inc.
# - Good/Service Provided: Web-Development Refactoring
# - Cost: $1,329.99
# - Thank you for your patronage
# ```

class Receipt_maker
  attr_accessor :item_service_name, :item_cost

  def initialize (item_service_name = "ERROR: NO NAME", item_cost = "ERROR: NO NAME", company_name = "Particular Assembly Inc.", thank_you_msg = "Thank you! Goonies Never say die!")
    @item_service_name = item_service_name
    @item_cost = item_cost
    @company_name = company_name
    @thank_you_msg = thank_you_msg
    # @ui = Ui.new
  end

  def print_reciept(item_service_name = @item_service_name, item_cost = @item_cost)
    puts "
     - Company Name: #{@company_name}
     - Good/Service: #{item_service_name}
     - Cost: $#{item_cost}
     - #{@thank_you_msg}
     "
  end
end




puts "What did you buy?"
receipt_maker001.item_service_name = gets.chomp.to_s
puts "What did it cost?"
receipt_maker001.item_cost = gets.chomp.to_i


# class UI
#   def go
#       putputtsutstututu buy?"
#       recei  receipt_make?"
    # receiptt__maker0mp.to_s
#       puts      puts cost?"
#       recei"
      # receipt_id it cost?"
    # o_i
#     end
# end
# _i

# end



receipt_maker001 = Receipt_maker.new()


receipt_



.item_cost = gets.chomp.to_i
end




receipt_maker001.print_reciept()
