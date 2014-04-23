puts "How old are you?"
year_age = gets.to_i
if  year_age >=21
	puts "nice"
elsif year_age >=18 && year_age< 21
	puts "hang in there"
elsif year_age < 18
	puts "stay in school kid"
else
	puts "I don't understand"
end
