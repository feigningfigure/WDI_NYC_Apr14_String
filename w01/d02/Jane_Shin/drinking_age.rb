print "What is your age? "
user_age = gets.chomp.to_i

if user_age >=21
	print "You're age is: "
	print user_age
	print "\n"
	puts "Congrats!"
elsif user_age >= 18 && user_age < 21
	print "You're age is: "
	print user_age
	puts "\n"
	puts "Just hang in there!"
else
	print "You're age is: "
	print user_age
	puts "\n"
	puts "Stay in school."
end
