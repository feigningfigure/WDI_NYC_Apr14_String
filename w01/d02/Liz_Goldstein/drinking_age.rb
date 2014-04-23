puts "How old are you???"
user_age = gets.chomp.to_i
print "Your age is #{user_age}"

if user_age >= 21
  puts ""
  puts "Have a drink!"
elsif user_age >= 18 && user_age < 21
  puts ""
  puts "Go to St. Marks place for some fake ID's kiddo."
else
  puts ""
  puts "Stay in school!"
end
