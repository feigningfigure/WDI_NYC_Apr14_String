class Postcard

attr_accessor :ship_to_address, :message 

	def initialize 
		@ship_to_address = ship_to_address
		@message = message 

	end 

	def to_s 
		# message to be sent to address
		"#{message} is being sent to #{ship_to_address}"
	end

end



class Mailbox
# mailbox is the object
	def initialize
		@postcards = []
	end

	def accept_postcards(mail_item)
	# method with parameters 
	postcards << mail_item
	end

Postcard.new()

