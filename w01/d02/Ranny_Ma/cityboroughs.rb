def cityborough(borough)
  if borough == "Manhattan"
    puts "If you can make it here, you win"
  elsif borough == "Bronx"
    puts "Where is that?"
  elsif borough == "Brooklyn"
    puts "You're really cool"
  elsif borough == "Queens"
    puts "You're cool"
  else borough == "Staten Island"
    puts "Meh..."
  end
end

puts "Please enter the borough you live in: "
borough = gets.chomp
cityborough(borough)
