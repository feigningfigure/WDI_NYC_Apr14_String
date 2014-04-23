puts "What borough do you live in?"

city_borough = gets.chomp.downcase

if city_borough == "manhattan"
  puts "Awesome, me too!"

elsif city_borough == "queens"
  puts "I used to live there too!"

elsif city_borough == "brooklyn"
  puts "I could see myself living there one day."

else
  puts "I rarely visit."

end
