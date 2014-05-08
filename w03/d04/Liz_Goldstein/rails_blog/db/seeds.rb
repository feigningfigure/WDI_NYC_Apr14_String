# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
post = Post.create({
  title: Faker::Lorem.sentence ,
  body:  Faker::Lorem.paragraph(sentence_count = 3)
  })
end
# @posts = 100.times do Post.create end

#create @ posts in post controller..to use in associated view
