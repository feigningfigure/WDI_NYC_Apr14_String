Continent.delete_all
Country.delete_all
Person.delete_all
Visa.delete_all


3.times do 
	continent = Continent.new({
		name: Faker::Address.city,
		area: Faker::Address.street_address
		})

	countries = []
	20.times do
		countries << Country.create({
			name: Faker::Address.country,
			population: rand(45..200),
			language: Faker::Lorem.word
			})

		20.times do
			person = Person.create({
			name: Faker::Name.name
			})
			person.add_visa(name)
		end
	end
	
	countries = Country.all
	countries.each do |country|
	  continent.countries << country
	end

	continent.save!

end



# 2.times do
# 	people = Person.all
# 	people_array = []
# 	people.each do |person|
# 		people_array << person
# 	end

# 	countries = Country.all
# 	country_array = []
# 	countries.each do |country|
# 		country_array << country
# 	end

# 	15.times do
# 		id_person = people_array.shuffle.pop.id
# 		id_country = country_array.shuffle.pop.id
# 		quant = rand(1..10)

# 		visa = Visa.create({
# 			country_id: id_country,
# 			person_id: id_person,
# 			quantity: quant
# 			})
# 	end
# end

