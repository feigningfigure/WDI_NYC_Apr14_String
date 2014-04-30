class Postcard

	attr_accessor :ship_to, :ship_from, :reciever_name, :sender_name, :message

	def initialize
		@ship_to = "To Address"
		@ship_from = "From Address"
		@reciever_name = "To"
		@sender_name = "From"
		@message = "Pleasantries"
		fill_out_card
	end

	def fill_out_card
		puts "Name of postcard recipient?"
		@reciever_name = gets.chomp
		puts "Recieving address?"
		@ship_to = gets.chomp
		puts "Name of sender?"
		@sender_name = gets.chomp
		puts "Return address?"
		@ship_from = gets.chomp
		puts "What message would you like to put?"
		@message = gets.chomp
	end

	def to_s
		"The message '#{@message} is being sent to #{@reciever_name} at #{@ship_to}"
	end

	def display_postcard
		puts
		puts "Dearest #{@reciever_name},"
		puts
		puts @message
		puts
		puts "Sincerely"
		puts "-#{@sender_name}"
		puts
	end

end

class Mailbox


	def initialize
		@postcards = []
	end


	def accept_postcard(postcard)
		if @postcards.include? postcard
			return
		else
			if postcard.class == Postcard
			@postcards << postcard
			end
		end
	end

	def to_s
		"The mailbox has #{@postcards.length} postcards."
	end
end