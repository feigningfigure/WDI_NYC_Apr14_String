

def is_annagram?(word1, word2)
	sorted_word_array1 = word1.split('').sort
	sorted_word_array2 = word2.split('').sort
	if sorted_word_array1.length == sorted_word_array2.length
		sorted_word_array1.each_with_index do |letter, index|
			return false if letter != sorted_word_array2[index]
		end
		return true
	else
		return false
	end
end

def compare(word, array)
	array.each do |word2|
		puts "It is #{is_annagram?(word, word2)} that #{word2} is an annagram of #{word}"	
	end
end

@dollars_to_pounds = 0.6

def dollars_converter(base)
	result = base * @dollars_to_pounds
end

def pounds_converter(base)
	result = base * 1/@dollars_to_pounds
end

def converter(base_currency, num)

	case base_currency
	when "dollars"
		self.dollars_converter(num)
	when "pounds"
		self.pounds_converter(num)
	end
end
