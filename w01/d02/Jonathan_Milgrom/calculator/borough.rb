def borough(z)
	if z == "manhattan"
		puts "not too shabby"
	elsif z == "the bronx"
		puts "go yankees"
	elsif z == "queens"
		puts "go mets"
	elsif z == "staten island"
		puts "ok ok"
	else
		puts "innnteresting"
	end
end
puts "What borough do you live in?"
brgh = gets.chomp
borough(brgh)				
		
