# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
 Post.create({
  author: Faker::Name.name,
  title: Faker::Lorem.sentence(3),
  body:  Faker::Lorem.paragraph(1)
  })
end
