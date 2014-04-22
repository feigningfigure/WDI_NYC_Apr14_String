print "What is your age? "
user_age = gets.chomp.to_i



if user_age > 100
  print "Your age is: "
  print user_age
  puts ""
  puts "You are way old!"
else
  puts "Enjoy the rest of your youth!"
end
