class MyMovie < ActiveRecord::Base

		



	def self.create()
	
# url_movie_title = movie_title.gsub(' ', '%20')
# movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{url_movie_title}"))

# m_ovie= My_movie.new

MyMovie.create (
m_ovie.title = movie_hash["Title"]
m_ovie.year = movie_hash["Year"]
m_ovie.rated = movie_hash["Rated"]
m_ovie.released = movie_hash["Released"]
m_ovie.runtime = movie_hash["Runtime"]
m_ovie.genre = movie_hash["Genre"]
m_ovie.director = movie_hash["Director"]
m_ovie.writer = movie_hash["Writer"]
m_ovie.actors = movie_hash["Actors"]
m_ovie.plot = movie_hash["Plot"]
m_ovie.movie_poster = movie_hash["Movie Poster"]
)

	
	# url_movie_title = @movie_title.gsub(' ', '%20')
	# movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{url_movie_title}"))

# 	m_ovie = MyMovie.new

# 	m_ovie.create (


# m_ovie.title = movie_hash["Title"]



# 		title: movie_hash.title 
# 		year: movie_hash.year
# 		rated: movie_hash.rated
# 		released: movie_hash.released
# 		runtime: movie_hash.runtime
# 		genre: movie_hash.genre
# 		director: movie_hash.director
# 		writer: movie_hash.writer
# 		actors: movie_hash.actors
# 		plot: movie_hash.plot
# 		movie_poster: movie_hash.movie_poster
# 		)	

	end



	def show
		
	end


end
