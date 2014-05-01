class Mailbox


	def initialize
		@postcards = []

	end

	def to_s
		if @postcards.length == 0
			"There is no mail!"
		else
			"The mailbox has #{@postcards.length}"
		end
	end

	def accept_postcard(new_post)
		@postcards << new_post
	end


end