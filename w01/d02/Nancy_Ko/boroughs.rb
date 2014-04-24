puts "Which borough do you live in?"
answer = gets.chomp.downcase

def city_borough(bronx, queens, brooklyn, manhattan, staten_island)
	if answer == bronx ?
		puts "Go Bronx"
	end

	else answer == queens ? 
		puts "Go queens" 
	end

	else answer == brooklyn ?
		puts "Fugghettaboutit"
	end

	else answer == manhattan ? 
		puts "Go Manhattan" 
	end

	else answer == staten_island ? 
		puts "Go staten_island" 
	end
end
