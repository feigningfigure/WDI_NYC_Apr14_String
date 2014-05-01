require pry

class postcard

attr_accessor :message, :address

def initialize(message, address)
	@message = message
	@address = address 
end

def to_s
puts "The message #{message}, is being shipped to #{address}"
end
end

class mailbox

def initialize
	@postcards = []

def accept_postcard(mail_item)
	@postcards << mail_item

def to_s
	puts "There are #{@postcards.count} post cards in this mailbox"

end
end
