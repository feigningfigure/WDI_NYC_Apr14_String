require_relative 'classes'

puts "Which building would you like to see?"
answer = gets.chomp
puts "The building is located at #{answer.address}, the architecture is characteristically #{answer.style}."
if answer.has_doorman == true
puts "Doorman: Yes."
else
  puts "Doorman: No."
end
puts "There are #{answer.num_floors} floors in this building."
if answer.is_walkup == true
puts "Elevator: No."
else
  puts "Elevator: Yes."
end





