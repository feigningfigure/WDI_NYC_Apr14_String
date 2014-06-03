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

