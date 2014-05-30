# string = "listen"
# list = %w(enlists google inlets banana)
# list.each do |word|
#   case string.chars.sort == word.chars.sort
#   when true
#     puts word
#   else
#     nil
#   end
# end

puts "What is your word?"
string = gets.chomp.downcase
puts "What are your four possible anagrams? (Type one and press return)"
first = gets.chomp.downcase
second = gets.chomp.downcase
third = gets.chomp.downcase
fourth = gets.chomp.downcase
list = [first, second, third, fourth]
list.each do |word|
  case string.chars.sort == word.chars.sort
  when true
    puts "'#{word.capitalize}'' is the anagram for '#{string}'."
  else
    nil
  end
end
