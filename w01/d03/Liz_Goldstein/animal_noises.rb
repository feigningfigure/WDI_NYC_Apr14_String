def noises(animal)
case animal
when "cat"; puts "MEOW!"
when "dog"; puts "WOOF"
when "sloth"; puts "SMILE!"
end
end

puts "What animal do you want to hear?"
puts "Cat, Dog or Sloth?"
input = gets.chomp.downcase
noises(input)

