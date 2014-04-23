print "What is your age?"
user_age=gets.chomp.to_i

if user_age >= 21
  puts "Your age is: #{user_age} - Congrats! here are some great bars"


elsif user_age >= 18 && user_age < 21
  puts "Your age is: #{user_age} Just a few more years until you can intoxicate yourself"


else
  puts "Your age is: #{user_age} Go back to illegally drinking"


end
