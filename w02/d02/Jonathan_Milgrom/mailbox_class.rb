class Mailbox

	attr_accessor :postcards

	def initialize
		@postcards = []
	end

	def accept_postcard(postcard)
		@postcards << postcard
	end

	def to_s
		puts "the mailbox has #{@postcards.length} postcards"
	end

end