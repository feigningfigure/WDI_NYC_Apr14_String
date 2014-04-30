class Mailbox

	attr_accessor :postcard_objects, 

	def initialize 
		@postcard_objects = []
	end

	def accept_postcard(postcard)
		@postcard_objects << postcard
	end

	def to_s
		"This mailbox has #{@postcard_objects.length} postcards"
	end

end