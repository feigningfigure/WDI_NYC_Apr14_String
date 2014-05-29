base_word = "listen"
word_list= %w[enlists google inlets banana]

def anagram?(w1, w2)
w1.chars.sort == w2.chars.sort
end

def find_anagrams(base_word, word_list)
  word_list.select do |word|
    anagram?(base_word, word)
  end
end

find_anagrams(base_word, word_list)

#OTHER SOLUTION
def anagram_check(word1,array)
  matches = []
  array.each do |word|
    if word1.chars.sort == word.chars.sort then matches << word end
  end
  "The word #{word1} is an anagram of the word(s) #{matches.join(", ")}"
end

word = "read"
words = %w(dear google inlets banana bread)

print anagram_check(word,words)
