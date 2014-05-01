class Postcard
	attr_accessor :ship_to_address, :message

	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end

	def to_s
		puts "The message #{@message} is being send to #{@ship_to_address}"
	end
end

class Mailbox

	def initialize
		@postcards = []
	end

	def accept_postcard(mail_item)
		@postcards << mail_item
	end

	def to_s
		puts "There are #{@postcards.count} postcards in this mailbox"
	end

end



