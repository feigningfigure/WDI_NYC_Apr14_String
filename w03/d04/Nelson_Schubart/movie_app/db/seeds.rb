# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ________________________________________________


# # API URL
# http://www.omdbapi.com/?t=True%20Grit&y=1969

# OMDBAPI columns to convert
# Title, Year, Rated, Released, Runtime, Genre, Director, Writer, Actors, Plot, Movie Poster

# THIS IS EXAMPLE API HASH
# {"Title":"True Grit","Year":"1969","Rated":"N/A","Released":"11 Jun 1969","Runtimge":"128 min","Genre":"Adventure, Western, Drama","Director":"Henry Hathaway","Writer":"Charles Portis (novel), Marguerite Roberts (screenplay)","Actors":"John Wayne, Glen Campbell, Kim Darby, Jeremy Slate","Plot":"A drunken, hard-nosed U.S. Marshal and a Texas Ranger help a stubborn young woman track down her father's murderer in Indian territory.","Language":"English","Country":"USA","Awards":"Won 1 Oscar. Another 7 wins & 5 nominations.","Poster":"http://ia.media-imdb.com/images/M/MV5BMTYwNTE3NDYzOV5BMl5BanBnXkFtZTcwNTU5MzY0MQ@@._V1_SX300.jpg","Metascore":"N/A","imdbRating":"7.4","imdbVotes":"27,075","imdbID":"tt0065126","Type":"movie","Response":"True"}

# movies = Movie.create(title: '', year: '', rated: , released: , runtime: , genre: , director: , writer: , actors: , plot: , movie_poster: )
# #   Mayor.create(name: 'Emanuel', city: cities.first)

# my_movies TABLE SCHEMA
# title: year:date rated:string released:date runtime:time genre:string director:string writer:string actors:string plot:text movie_poster:string

my_movies = Movie.create(
  title: Title,
  year: Year,
  rated:Rated,
  released: Released,
  runtime: Runtime,
  genre: Genre,
  director: Director,
  writer: Writer,
  actors: Actors,
  plot: Plot,
  movie_poster: Poster
  )

api_keys_convert_hash = (title = "Title"
