puts "Before I serve you I must know if you are old enough to drink"
print "What is your age? "
user_age = gets.chomp.to_i



if user_age >= 21
  print "Your age is: "
  print user_age
  puts
  puts "Enjoy the next beer on me!"
elsif user_age >= 18 && user_age < 21
  print "Your age is: "
  print user_age
  puts
  puts "No booze for you... would you care for a cigarette?"
else
  print "Your age is: "
  print user_age
  puts
  puts "Enjoy the next (root)beer on me!"
end