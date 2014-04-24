print "What borough do you live in?"
city_borough = gets.chomp.downcase

if city_borough == "manhattan"
	puts "Cool!"

elsif city_borough == "bronx"
	puts "Boogie Down Bronx!"

elsif city_borough == "brooklyn"
	puts "Oy Vey!"

elsif city_borough == "queens"
	puts "NaS"

else city_borough == "staten island"
	puts "That's not a borough..."

end