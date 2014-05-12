class Postcard
  attr_accessor :ship_to_address, :message
  def to_s()
    print "The message: #{@message} is being send to #{@ship_to_address}" #string iterpolation basic
  end
    
  def initialize(ship_to_address, message) #initialize method to set values, expects two arguments NOWs
    @ship_to_address = ship_to_address
    @message = message

 i
 $$$$$pry
 >load ./postcard.rb
 >billycard = Postcard.new("342 street", "go away")

 testing
 >billycard.message
 >billycard.to_s

 class Mailbox
 def initialize
   @postcard_objects = [] #instance variable to empty array xD
end
   def accept_postcard(piece_of_mail) #get it ready to take an argument
    @postcards << piece_of_mail #shovel in the postcard into the array
   end

   def to_s
     puts "there are #{@postcards.count}"
   end
 end
 >>
 $$$$$pry
 >>mailbox = Mailbox.new
 >>mailbox.to_s
 mailbox.accept_postcard(post
