require 'pry'

class Hangman

array_words = ["detective", "gandhi"]

	def initialize(array_words)
		word = array_words.sample
		@word = word.split("")
		@progress = @word.map { "_" }
		@count = 0
		@hint_count = 0
		@all_guesses = []
	end

	def progress
		if @count < 5
			@progress.join(" ")
		else
			return @word.join("")
		end
	end

	def guess(guessed_letter)
		# binding.pry
		@all_guesses << guessed_letter
		if @count < 5
			if @word.include?(guessed_letter)
				@word.each_with_index do |letter, index|
					if letter == guessed_letter
						@progress[index] = letter
					end
				end
				return true
			else
				@count += 1
				return false
			end
		else
			return nil
		end
	end

	def give_up
		@count = 5
		return @word.join("")
	end

	def incorrect
		return @count
	end

	def guesses
		return @all_guesses
	end

	def hint
		# hint_letter = "e"
		# commment below line if you want to set 
		# instance variable in rspec file
		@hint_letter = @word.sample
		# binding.pry
		if @progress.include? @hint_letter			
			hint
		else
			@hint_count += 1
		
			if @hint_count > 1
				@count += 1
			end

			guess(@hint_letter)
			
			return @hint_letter
		end
		
		# @hint_count += 1
		
		# if @hint_count > 1
		# 	@count += 1
		# end

	end

end







