print "what is your age?"
user_age = gets.chomp.to_i

if user_age >= 21
  print "grab a beer bro"
elsif user_age >= 18 && user_age < 21
  puts "not 21 but hang in there"
else
  puts "stay in school kiddo"
end

