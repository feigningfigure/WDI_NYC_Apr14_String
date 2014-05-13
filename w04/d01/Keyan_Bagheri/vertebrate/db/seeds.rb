# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vertebrae.delete_all
Animal.delete_all

7.times do

	vertebrae = Vertebrae.new({
		name: Faker::Lorem.words(1)[0].capitalize,
		scientific_name: Faker::Lorem.words(2).join(" ").downcase,
		characteristics: Faker::Lorem.paragraphs(2).join("")
	})

	animals = []

	50.times do

		animals << Animal.create({
			name: Faker::Name.last_name.to_s,
			scientific_name: Faker::Lorem.words(2).join(" ").downcase,
			characteristics: Faker::Lorem.paragraphs(2).join("")
			})
	end

	animals.each do |animal|

		vertebrae.animals << animal
	end
	vertebrae.save!
end
