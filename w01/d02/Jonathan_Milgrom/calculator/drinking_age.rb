print "What is your age?"
user_age = gets.chomp.to_i

print "Your age is: "
puts user_age

if user_age >= 21
	puts "you get some of them beers"
elsif user_age < 21 && user_age >= 18
	puts "you're almost there"
else 
	puts "stay in school"
end

