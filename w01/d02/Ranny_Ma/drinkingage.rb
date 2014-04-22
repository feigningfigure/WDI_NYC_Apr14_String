print "What is your age? "
user_age = gets.chomp.to_i

print "Your age is: #{user_age}"
print "\n"

if user_age >= 21
  puts "Have a beer"
elsif user_age < 21 && user_age >= 18
  puts "Not old enough"
else
  puts "Sorry"
end

