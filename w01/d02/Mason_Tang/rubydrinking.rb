
puts "Bouncer asks: What's your age?"

user_age = gets.chomp.to_i

puts "Your age is: #{user_age}"

if user_age >= 21
  puts "Congrats! You may enter"

elsif user_age >= 18 && user_age <= 21
  puts "Nice try"

else
  puts "Go home."
end
