
print "What borough of New York City do you live - Manhattan, Brooklyn, Bronx, Queens, Staten Island?"
user_borough=gets.chomp

if user_borough == "Manhattan"
  puts "Manhattan is a great place to live!"

elsif user_borough == "Brooklyn"
  puts "Brooklyn is very hip!"

elsif user_borough == "Bronx"
  puts "The Bronx is the home of the worst team in baseball!"

elsif user_borough == "Queens"
  puts "Queens, just like the Costanzas!"

else user_borough == "Staten Island"
  puts "Staten Island has a scenic boat ride!"

end
