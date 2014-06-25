# array1 = []
# array2 = []


# words = []
x = "listen"

match = %w(enlists google inlets banana)

# words << x
# words << match
# words.flatten

# array1 << x.split("")
# array2 << match.join.split("")
# intersection = array1 & array2

def anagram?(x, y)
  x.chars.sort == y.chars.sort
end

def find_anagrams(base_word, word_list)
  word_list.select do |word|
    anagram?(base_word, word)
  end
end
