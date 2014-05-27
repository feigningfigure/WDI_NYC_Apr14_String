# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create name: "Yanni", bio: "I like my ages 'new'.", age: 100
100.times do
  Artist.create name: Faker::Name.name, bio: "I like my ages 'new'.", age: 100
end
