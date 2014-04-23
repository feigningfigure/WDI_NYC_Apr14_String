print "what is your age? "

user_age = gets.chomp.to_i # because conditional does not work with strings

	if user_age > 21
  print "Come on in and have a drink or two!"
  print user_age
 	elsif user_age >= 18 && user_age< 21
  puts "Just a few more years!"
	else
  puts "Enjoy the rest of your youth!"
	end




	# CASE STATEMENT
	
print "Enter your grade: "
grade = gets.chomp
case grade
when "A"
  puts 'Well done!'
when "B"
  puts 'Try harder!'
when "C"
  puts 'You need help!!!'
else
  puts "You just making it up!"
end