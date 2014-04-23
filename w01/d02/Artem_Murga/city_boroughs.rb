def city_boroughs(borough)
	case borough
	
	when "Manhattan"
		puts "Hm..You're living in #{borough}"
	when "Brooklyn"
		puts "Hm..You're living in #{borough}"
	when "The Bronx", "Bronx"
		puts "Hm..You're living in #{borough}"
	when "Queens"
		puts "Hm..You're living in #{borough}"
	when "Staten Island"
		puts "Hm..You're living in #{borough}"
	end
	#don't forget to use else
end

p city_boroughs("The Bronx")
p city_boroughs("Bronx")

