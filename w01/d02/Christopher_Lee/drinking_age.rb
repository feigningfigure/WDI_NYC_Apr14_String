def drinking_age
  # get user input
  puts "What's your age?"
  user_age = gets.chomp.to_i
  puts "Your age is #{user_age}"
  # evaluates user input based on different scenarios
  if user_age >= 21
    puts "Congrats! Here're some good bars"
  elsif user_age < 21 && user_age >= 18
    puts "Hang in there, just a few more years"
  else
    puts "Stay in School"
  end
end

drinking_age
