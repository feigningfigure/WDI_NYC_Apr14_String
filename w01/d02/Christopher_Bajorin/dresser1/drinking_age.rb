#drinking age program
print "What is your age? "

user_age = gets.chomp.to_i

if user_age >= 21
  puts "Congrats! Here are some good news"
elsif user_age >= 18 && user_age < 21
  puts "Hang in there! Just a few more years."
else
  puts "stay in school!"
end

=begin

# Omar's code

print "What is your age? "
user_age = gets.chomp.to_i

if user_age > 100
  print "Your age is: "
  print user_age
  puts " "
  puts "You are way old!"
else
  puts "Enjoy the rest of your life"
end

=end
