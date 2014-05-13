# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movie = Movie.create({
  title: "First Movie!",
  year: "1999",
  rating: "R",
  released: "11 Jun 1969",
  runtime: "128 min",
  genre: "Adventure",
  director: "Henry Fonda",
  writer: "Henry Fonda",
  actors: "Henry Fonda",
  plot: "Bill Clinton recieves a prexxxsent",
  movie_poster: "http://ia.media-imdb.com/images/M/MV5BMTYwNTE3NDYzOV5BMl5BanBnXkFtZTcwNTU5MzY0MQ@@._V1_SX300.jpg"
  })

# 100.times do
#   Post.create({
#     title: Faker::Lorem.sentence(3),
#     body: Faker::Lorem.paragraph,
#     author_name: Faker::Name.name
#     })
# end
