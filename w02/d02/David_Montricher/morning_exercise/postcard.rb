# Postcard object should have ship_to_address, a message, and a to_s method.
# Mailbox object should have an array of postcard objects, an accept postcard method (place that postcard in mailbox's array of postcards) and a method that includes number of postcards in the mailbox (print number of postcards)
Class Postcard
  #Ship_to_address is an attribute so we attr_accessor
  attr_accessor :ship_to_address, :message

  def initialize(ship_to_address, message)
    @ship_to_address = ship_to_address
    @message = message
  end

  def to_s
    #printing message and ship to address of a single postcard
    puts "The message #{@message} is being sent to #{@ship_to_address}"
  end
end

Class Mailbox
  def initialize
    @postcard = []
  end
  def accept_postcard (mail_item)
    @postcards << mail_item
  end
  def to_s
    puts "There are #{@postcards.count} postcards in this mailbox"
  end
end



# def postcard
#   # postcard array[index] = [ship_to_address, message]
#   postcard_array = Array.new
#   postcard_array[0] = ["41 Union Sq W New York NY 10003", "Hello GA World, I'm a postcard!"]
# end
# def mailbox (postcard)
#   mailbox_array = Array.new
#   mailbox_array << postcard_array[0]
# end


