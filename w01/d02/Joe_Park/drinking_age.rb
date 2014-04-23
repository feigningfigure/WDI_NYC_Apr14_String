def drinking_age_verifier(user_age)
	if user_age > 100 && user_age < 300
		print "Your age is: "
		print user_age
		print "\n" #puts new line... puts "" also works
		puts "You are way old! "
	elsif user_age >= 21 && user_age <= 100
		print "Your age is: "
		print user_age
		puts ""
		puts "Enjoy your drinks"
	elsif user_age < 21 && user_age > 10
		print "Your age is: "
		print user_age
		print "\n"
		puts "Don't even think about it!"
	elsif user_age >= 300
		print "Your age is: "
		print user_age
		puts ""
		puts "You are not a mortal human being!"
	else
		puts "No...just No"
	end
end

print "what is your age? "
user_age = gets.chomp.to_i
drinking_age_verifier(user_age)