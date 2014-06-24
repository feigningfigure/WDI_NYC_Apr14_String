class Hangman

	attr_accessor :guesses

	def initialize(word)
		@num = Random.new(2)
		if word.class == Array
			@word = word[@num.rand(0..word.length).floor].split("")
		else
			@word = word.split("")
		end
		@progress = @word.map { "_" }
		@incorrect_guesses = 0
		@guesses = []
	end

	def progress
		@incorrect_guesses < 6 ? @progress.join(" ") : @progress = @word.join
	end

	def guess(guess_letter)
		if @incorrect_guesses < 5
			@guesses << guess_letter
			if @word.include?(guess_letter)
				@word.each_with_index do |letter, index|
					if letter == guess_letter
						@progress[index] = letter
					end
				end
				return true
			else
				@incorrect_guesses += 1
				return false
			end
		else 
			@incorrect_guesses = 6
			return nil
		end
	end

	def incorrect
		return @incorrect_guesses
	end

	def giveup
		@incorrect_guesses = 6
		return @progress = @word.join
	end

end