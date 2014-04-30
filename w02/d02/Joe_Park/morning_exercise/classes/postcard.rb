class Postcard

	attr_accessor :message, :ship_to_address

	def initialize (message, address)
		@message = message
		@ship_to_address = address

	end

	def to_s
		"the message '#{@message}'' is being sent to '#{@ship_to_address}'"
	end

end