class Postcard
	attr_accessor :ship_to_address, :message

	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end

	def to_s
		"This postcard contains the message #{@message} and is being shipped to #{ship_to_address}"
	end

end


class Mailbox
	attr_accessor :arr_of_postcard_objs

	def initialize()
		@arr_of_postcard_objs = []
	end

	def accept_postcard(postcard_obj)
		@arr_of_postcard_objs << postcard_obj
	end

	def to_s
		return "This mailbox has #{@arr_of_postcard_objs.length} postcards."
	end

end


postcard = Postcard.new("41 Union Square West", "Good morning!")