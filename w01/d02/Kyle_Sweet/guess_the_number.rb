begin

robot_output =  0 + Random.rand(10)


print "I am thinking of a number 0-10 - what do you guess?"
user_guess=gets.chomp.to_i

puts "I have guessed #{robot_output}"

  robot_output!=user_guess
  puts"guess again"


end until
 robot_output==user_guess
  puts "You have defeated me, are you happy to upset a machine?"


