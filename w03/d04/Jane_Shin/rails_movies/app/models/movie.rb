class Movie < ActiveRecord::Base

def self.movie_info(title, year=nil)
	# response_array = []

	response_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{title}&y=#{year}").body)

	# response_hash.each do |k, v|
	# 	response_array << v
	# end

	# response_array

end




	# title = response_hash["Title"]
	# year = response_hash["Year"]
	# rated = response_hash["Rated"]
	# released = response_hash["Released"]
	# runtime = response_hash["Runtime"]
	# genre = response_hash["Genre"]
	# director = response_hash["Director"]
	# writer = response_hash["Writer"]
	# actors = response_hash["Actors"]
	# plot = response_hash["Plot"]
	# movieposter = response_hash["Poster"]

end


