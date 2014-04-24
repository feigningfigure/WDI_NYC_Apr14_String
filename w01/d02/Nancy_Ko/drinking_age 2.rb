print "What is your age? "
	user_age = gets.chomp.to_i

	if user_age >= 21
	  print "Your age is: #{user_age}"
	  puts ""
	  puts "Congrats! What's your favorite drink?"
	  answer = gets.chomp
	  print "My favorite is #{answer} too!"
	elsif 
		user_age >= 18 && user_age < 21
	  puts "Enjoy the rest of your youth!"
	else 
		"Stay in School!"
	end

