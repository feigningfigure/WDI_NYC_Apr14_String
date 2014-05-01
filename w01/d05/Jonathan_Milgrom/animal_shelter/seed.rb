$animals = []
100.times do 
	$animals << Animal.new(Faker::Name.name)
end
