word = "listen"
list = %w(enlists google inlets banana)

# disected_word = word.split(//).sort
# disected_list = list.map do |anagram|
#   anagram.split(//).sort
# end

# disected_list.select { |word| word == disected_word }



def anagram?(w1, w2)
  w1.chars.sort == w2.chars.sort
end


def find_anagrams(base_word, word_list)
  word_list.select { |word| anagram?(base_word, word) }
end
