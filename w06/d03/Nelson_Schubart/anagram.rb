#Rearranging of letters of a word to produce a new word
#read == dear

@word = listen

@anagram_array = %w(enlists google inlets banana)

anagram_array.each do


if __FILE__ == $0
   # read two strings from the command line
   first, second = gets.chomp, gets.chomp

   # lengths not equal
   not_anagram if first.length != second.length

   # lengths equal
   anagram if first == second


   # Two strings must have the exact same number of characters in the
   # correct case to be anagrams.
   # We can sort both strings and compare the results
   if first.chars.sort.join == second.chars.sort.join
      anagram
   else
      not_anagram
   end
end
