Continent.delete_all
Country.delete_all


5.times do 
	continent = Continent.new({
		name: Faker::Address.city,
		area: Faker::Address.street_address
		})

	countries = []
	3.times do
		countries << Country.create({
			name: Faker::Address.country,
			population: rand(45..200),
			language: Faker::Lorem.word
			})
	end

	countries.each do |country|
	  continent.countries << country
	end

	continent.save!

end
