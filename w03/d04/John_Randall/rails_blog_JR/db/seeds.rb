# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




100.times do  
  Post.create({
    title: "Faker::Lorem.words(3)",
    body: "Faker::Lorem.paragraphs(3)",
    author_name: "Faker::Name.name"
  })
end


# post = Post.create({
#   title: "First Post!",
#   body: "Yeah!"
#   })

