# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times post = Post.create({
  title: Faker::Lorem.words(num = 4, supplemental = false),
  body: Faker::Lorem.sentences(sentence_count = 3, supplemental = false)
  })
