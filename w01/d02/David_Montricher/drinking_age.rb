print "What's your age? "
user_age = gets.chomp.to_i

def drinking_age_verifier (user_age)
  if user_age >= 21
    print "Your age is: "
    puts user_age
    puts "Congrats, here you have some good bars"
  elsif user_age >= 18 && user_age < 21
    print "Your age is: "
    puts user_age
    puts "Hang in there, just a few more years"
  else
    print "Your age is: "
    puts user_age
    puts "Stay in school"
  end
end

drinking_age_verifier (user_age)



=begin Created in class
Print "What's your age?"
user_age = gets.chomp.to_i

if user_age >= 21
  print "Your age is:"
  print user_age
  puts "Congrats, here you have some good bars"
elsif user_age >= 21 && user_age < 21
  print "Your age is:"
  print user_age
  puts "Hang in there, just a few more years"
else
  print "Your age is:"
  print user_age
  puts "Stay in school"
end
=end
