def decipher(original_word, word_list_array)
  original_letters = original_word.split(//).sort
  correct_words = []
  word_list_array.each do |word|
    if word.split(//).sort == original_letters
      correct_words << word
    end
  end
  correct_words.join(", ")
end

# w1.chars.sort == w2.chars.sort

# .split(//)

# "dog", %w(god pog ogd)



#  %w(enlists google inlets banana)
# [
#     [0] "enlists",
#     [1] "google",
#     [2] "inlets",
#     [3] "banana"
# ]

decipher("scare", %w(acres cares sacre mare crasc))
