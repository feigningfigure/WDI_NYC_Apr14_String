# @ship_to = "350 5th Ave"
# @message = "Are yout there?"
# @mail = "My postcard"

# class Postcard
# 	attr_accessor :ship_to, :message

# 	def initialize#(ship_to, message), wasn't sure if I have to add parameters
# 		@ship_to = ship_to
# 		@message = message
# 	end

# 	def to_s
# 		"The message '@message' is is being sent to '@ship_to'"
# 	end
# end

# class Mailbox
# 	attr_accessor :mail

# 	def initialize
# 		@mail = postcard
# 		@box = []
# 	end

# 	def accept_postcard(postcard)
# 		@box << postcard
# 	end

# 	def to_s 
# 		"The mailbox has #{box.length}.to_s postcards"
# 	end
# end

# puts "Where are you sending the postcard to?"
# 	ship_to = gets.chomp
# puts "What would you like to say in your message?"
# 	message = gets.chomp
# 	Postcard.new


#exerise solution with Neel
class Postcard
	attr_accessor :ship_to_address, :message

	def initialize(ship_to_address, message)
		@ship_to_address = ship_to_address
		@message = message
	end

	def to_s
		puts "The message '#{@message}' is being sent to '#{@ship_to_address}'"
	end

end

class Mailbox

	def initialize
		@postcards =[]
	end

	def accept_postcard(postcard)
		@postcards << postcard
	end

	def to_s
		puts "There are #{@postcards.count} postcards in this mailbox"
	end

end


