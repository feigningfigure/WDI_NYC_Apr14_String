puts "Can you have a beer?"
puts "Tell me; how old are you?"
user_age = gets.chomp.to_i



if user_age >= 21
  puts "Drink up!"
elsif user_age >= 18 && user_age < 21
  puts "No drinking for you; but feel free to join the army."
elsif user_age >= 16 && user_age < 18
  puts "You're good to drive, but that's as far as you go."
else
  puts "Then don't even think about it."
end
