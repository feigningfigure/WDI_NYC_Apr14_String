









variants = %w[banana word]
word = "read"
# def anagram(word, variants)
	vowel_size =[]
	#qt check
	p word.size
	#vowels check
	p word.split
	word.split(//).each { |char| vowel_size << char[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"]   }  
		p vowel_size

	# variants.each do |item|
	# 	sounds = []
	# 	sounds << item[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"]
	# 	sounds << item[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "vowel"]
	# 	sounds
	# end
# end








## Morning Exercise

### Anagram Detector


# ***"Anagram": the rearranging of the letters of a word to produce a new word ***


# Write a program that, given a word and a list of possible anagrams, selects the correct one(s).

# In other words, given: `"listen"` and `%w(enlists google inlets banana)` the program should return "inlets". (Look up "%w" if you don't know what it does.)

# Think about: 

# - What are the scenarios we should test for to see if a word is an anagram?
# - What makes something an anagram? The two words have the same letters...
# - How can we check to see if they have exactly the same letters?


# 	