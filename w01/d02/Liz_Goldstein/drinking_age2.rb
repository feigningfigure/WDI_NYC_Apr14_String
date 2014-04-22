puts "How old are you???"
user_age = gets.chomp.to_i

case user_age
  when user_age >= 21
    puts "Have a drink!"
  when user_age > 17, user_age < 21
    puts "Fake IDs for sale on St. Marks place kid"
  when user_age < 17
    puts "Stay in school!"
  end
