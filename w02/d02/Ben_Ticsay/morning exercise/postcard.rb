class Postcard

	attr_accessor :ship_to_address, :message

	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end

	def to_s
		p "The message #{@message} is being sent to #{@ship_to_address}"
	end

end

ben_postcard = Postcard.new("123 Fake St.", "Hello world.")
# #puts "What's your ship to address?"
# ship_to_address = "123 Fake St." #gets.chomp
# # puts "What's your message?"
# message = "Hello world." #gets.chomp

ben_postcard.to_s