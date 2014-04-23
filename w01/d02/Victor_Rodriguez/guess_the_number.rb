def get_number
puts "guess the number between 0 and 10"
answer = gets.chomp.to_i

if answer == 5 
	puts "Congrats, thats correct"
	return true
else get_number
end
end

get_number
