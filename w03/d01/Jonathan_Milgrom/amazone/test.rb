
name_or_id = gets.chomp
user_input = 
	if name_or_id == "name"
		puts "What your product called?"
		name = gets.chomp.downcase
	else
		puts "What is the product's ID number?"
		id = gets.chomp
	end

puts user_input