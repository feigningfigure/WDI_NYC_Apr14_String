# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
movie_name_seed_array = ["gladiator", "swingers", "rock"]
url_string="http://www.omdbapi.com/?i=&t="
url_array = []

movie_name_seed_array.each do |movie|
	url_array << url_string + movie
end

api_keys_conversion_hash = {title: "Title", year: "Year", rated: "Rated", released: "Released", runtime: "Runtime", genre: "Genre", director: "Director", writer: "Writer", actors: "Actors", plot: "Plot", movie_poster: "Poster"}

url_hashes_array = []

url_array.each do |url|
	url_hashes_array << JSON.parse(HTTParty.get(url))
end



# url_hashes_array.each do |movie|
# 	hash[api_keys_conversion_hash[:title]],
# 		 hash[api_keys_conversion_hash[:year]],
# 		  hash[api_keys_conversion_hash[:rated]],
# 		     hash[api_keys_conversion_hash[:released]],
# 		    hash[api_keys_conversion_hash[:runtime]],
# 		  hash[api_keys_conversion_hash[:genre]],
# 		     hash[api_keys_conversion_hash[:director]],
# 	hash[api_keys_conversion_hash[:writer]],
# 	hash[api_keys_conversion_hash[:actors]], 
# 	hash[api_keys_conversion_hash[:plot]],
# 		     hash[api_keys_conversion_hash[:movie_poster]]
# end



url_hashes_array.each do |movie_hash|
		MyMovie.create(
			 title: movie_hash[api_keys_conversion_hash[:title]],
		     year: movie_hash[api_keys_conversion_hash[:year]],
		     rated: movie_hash[api_keys_conversion_hash[:rated]],
		     released: movie_hash[api_keys_conversion_hash[:released]],
		     runtime: movie_hash[api_keys_conversion_hash[:runtime]],
		     genre: movie_hash[api_keys_conversion_hash[:genre]],
		     director: movie_hash[api_keys_conversion_hash[:director]],
		     writer: movie_hash[api_keys_conversion_hash[:writer]],
		     actors: movie_hash[api_keys_conversion_hash[:actors]],
		     plot: movie_hash[api_keys_conversion_hash[:plot]],
		     movie_poster: movie_hash[api_keys_conversion_hash[:movie_poster]]
		     )
end

# url_hashes_array.each do |hash|
# 		MyMovie.create(
# 			 title: hash[api_keys_conversion_hash[title:]]
# 		     year: hash[api_keys_conversion_hash[year:]]
# 		     rated: hash[api_keys_conversion_hash[rated:]]
# 		     released: hash[api_keys_conversion_hash[released:]]
# 		     runtime: hash[api_keys_conversion_hash[runtime:]]
# 		     genre: hash[api_keys_conversion_hash[genre:]]
# 		     director: hash[api_keys_conversion_hash[director:]]
# 		     writer: hash[api_keys_conversion_hash[writer:]]
# 		     actors: hash[api_keys_conversion_hash[actors:]]
# 		     plot: hash[api_keys_conversion_hash[plot:]
# 		     movie_poster: hash[api_keys_conversion_hash[movie_poster:]]
# 		     )
# end