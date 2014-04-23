print "What is your age?"
user_age = gets.chomp.to_i

puts "Your age is #{user_age}"

if user_age >= 21
puts "Congrats! Here are some good bars."

elsif user_age >=18 && user_age < 21
puts "Hang in there! Just a few more years."

else user_age < 18
puts "Stay in school!"

end