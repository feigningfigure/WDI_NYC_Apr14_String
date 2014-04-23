
def take_borough
  puts "What is the borough you live in?"
  borough = gets.chomp
  if borough == "Manhattan"
      puts "Rent sucks, huh?"
  elsif borough == "Brooklyn"
      puts "Hipster..."
  elsif borough == "Staten Island"
      puts "Have you seen Snooki lately?"
  elsif borough == "Queens"
      puts "Anywhere near Arthur Ashe Stadium?"
  elsif borough == "Long Island"
      puts "Living at home?"
  end
end

take_borough
