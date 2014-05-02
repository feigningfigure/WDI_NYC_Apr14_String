class Postcard  #postcard object

attr_accessor :ship_to_address , :message
# to sent to individual and check
# postard should have
def intialize(ship_to_address, message)
# give values to your attr
# when set post.new its looks at ship_to_address , message
@ship_to_address = ship_to_address
@message = message
end




def to_s
 puts "The message #{@message} is beinf send to #{@ship_to_address}"
     end
end
