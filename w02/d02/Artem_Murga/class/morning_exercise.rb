class Postcard 

	def initialize(address, message)
		@ship_to_address = address
		@message = message

	end

	def to_s
		 "The message #{@message} is being sent to #{@ship_to_address}"
	end

end

class Mailbox

	attr_accessor :array	
	
	def initialize
		@array = []
	end

	def accept_postcard(postcard)
		@array << postcard
	end

	def to_s
		"The mailbox has #{array.size}"
	end

end






