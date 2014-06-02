base_word = "listen"
word_list = %w(enlists google inlets banana)

def anagram (base_word, word_list)
	word_list.each do |anagram|
		if 
			word.chars.sort == anagram.chars.sort
			puts "#{anagram}"
		end
	end
	# puts "#{anagram}"
end


# class SmartCalculator

#   def initialize()
#     @operators = {}
#   end

#   def teach(op, function)
#   	@operator["#{op}"] = Proc.new do
#   		function
#   	end

#   end
# end