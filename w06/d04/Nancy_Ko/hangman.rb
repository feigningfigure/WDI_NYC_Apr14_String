class Hangman 

	def initialize 
		@word = word
		@guess_letter = guess_letter
	end

	def progress()
		arr = @word.split("") 

		underscore = @word.map do |letter|
			"_"
		end
	underscore.join(" ")
	end

	def guess()
		@word.include?
	end

end

game = Hangman.new("detective")
puts game.progress()

game = Hangman.new("gandhi")
puts game.progress()



