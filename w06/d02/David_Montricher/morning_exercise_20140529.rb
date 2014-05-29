# take input value from user and compare with local array

check_word = listen
words_array = %w(enlist google inlets banana)

def anagrams? (words_array)
  anagrams = words_array.group_by { |word| word.chars.sort }.values
  return anagrams
end

def anagram? (w1, w2)
  w1.chars.sort == w2.chars.sort
end

def find_anagrams (base_word, word_list)
  word_list.select do |word|
    anagram?(base_word, word)
  end
end




# Write a program that, given a word and a list of possible anagrams, selects the correct one(s).

# In other words, given: "listen" and %w(enlists google inlets banana) the program should return "inlets". (Look up "%w" if you don't know what it does.)

# Think about:

# What are the scenarios we should test for to see if a word is an anagram?
# What makes something an anagram? The two words have the same letters...
# How can we check to see if they have exactly the same letters?
