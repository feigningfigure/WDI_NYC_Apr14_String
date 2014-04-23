number = rand(1..10)

puts "Can you guess the number I'm thinking of?"
puts "It's between 1 and 10"

loop do
  print "What do you think? "
  guess = gets.chomp.to_i

  unless guess == number
    puts "Nope. Try again."
  else
    puts "Yay! Have a cookie!"
    exit
  end
end
