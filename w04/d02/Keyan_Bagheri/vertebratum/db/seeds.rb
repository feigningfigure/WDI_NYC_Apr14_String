# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vertebrae.delete_all
Animal.delete_all
Region.delete_all
Location.delete_all

unit_names = [
	"sectors",
	"quadrants",
	"square miles",
	"lakes",
	"rivers",
	"bodies of water",
	"forests",
	"desserts",
	"tundras",
	"embankments",
	"valleys",
	"mountains",
]

12.times do

	region = Region.create({
		name: Faker::Lorem.words(1)[0].capitalize,
		description: Faker::Lorem.words(8).join(" ").capitalize
		})
end

7.times do

	vertebrae = Vertebrae.new({
		name: Faker::Lorem.words(1)[0].capitalize,
		scientific_name: Faker::Lorem.words(2).join(" ").downcase,
		characteristics: Faker::Lorem.paragraphs(2).join("")
		})

	animals = []
	number = rand(10..40)

	number.times do

		animal = Animal.create({
			name: Faker::Name.last_name.to_s,
			scientific_name: Faker::Lorem.words(2).join(" ").downcase,
			characteristics: Faker::Lorem.paragraphs(2).join("")
			})

		random_regions = Region.all
		num = rand(1..4)
		num.times do

			occupied_region_name = random_regions.to_a.pop.name
			random_quantity = rand(1..23)

			animal.add_location(
				random_quantity,
				unit_names.sample,
				occupied_region_name
				)
		end

		animal.save!

		animals << animal
	end

	animals.each do |animal|

		vertebrae.animals << animal
	end
	vertebrae.save!
end