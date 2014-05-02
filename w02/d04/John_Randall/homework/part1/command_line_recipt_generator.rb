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
  attr_accessor :item_name, :item_cost

  def initialize (item_name = "ERROR: Recipt_Maker: NO ITEM NAME", item_cost = "ERROR: Recipt_Maker: NO ITEM COST", company_name = "Particular Assembly Inc.", thank_you_msg = "Thank you! Goonies Never say die!")
    @item_name = item_name
    @item_cost = item_cost
    @company_name = company_name
    @thank_you_msg = thank_you_msg
    @ui = Receipt_maker_ui.new(self)
    go()
  end

  def print_reciept(item_name = @item_name, item_cost = @item_cost)
    puts "
     - Company Name: #{@company_name}
     - Good/Service: #{item_name}
     - Cost: $#{item_cost}
     - #{@thank_you_msg}
     "
  end

  def go()
    @ui.collect_information()
    self.print_reciept()
  end
end


class Receipt_maker_ui
  def initialize(owner)
    @owner = owner
  end

  def collect_information()
    puts "What did you buy?"
    @owner.item_name = gets.chomp.to_s
    puts "What did it cost?"
    @owner.item_cost = gets.chomp.to_i
  end
end

receipt_maker001 = Receipt_maker.new()



