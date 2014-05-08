# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Jonathan Milgrom's solution
100.times  do
  Post.create({
    # J.M. original
    # title: Faker::Name.name,

    # Chris B.
    title: Faker::Lorem.sentence(3),

    body: Faker::Lorem.paragraph(1),
    # Joe's amendment
    author_name: Faker::Name.name
    })
end
