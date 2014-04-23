
current_temp = 75
puts "Current temperature is: #{current_temp}."
puts "What is your desired room temperature?"
desired_temp = gets.chomp
puts "Ok, desired temperature is: #{desired_temp}."
puts "Is the AC functional, (y)es or (n)o?"
a_c = gets.chomp

if desired_temp.to_i <= current_temp && a_c == "y"
  puts 'Turn on the A/C please'
elsif desired_temp.to_i <= current_temp && a_c == "n"
  puts 'Fix the A/C now! It\'s hot!'
else desired_temp.to_i >= current_temp && a_c == "n"
  puts 'Fix the A/C whenever you have a chance! It\'s cool...Brrrrrrr.'
end

