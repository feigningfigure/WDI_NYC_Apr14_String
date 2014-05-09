class MyMovie < ActiveRecord::Base

		



	def self.create()
	

	
	url_movie_title = movie_title.gsub(' ', '%20')
	movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{url_movie_title}"))

	m_ovie= MyMovie.new

	MyMovie.create (


m_ovie.title = movie_hash["Title"]



		title: movie_hash.title 
		year: movie_hash.year
		rated: movie_hash.rated
		released: movie_hash.released
		runtime: movie_hash.runtime
		genre: movie_hash.genre
		director: movie_hash.director
		writer: movie_hash.writer
		actors: movie_hash.actors
		plot: movie_hash.plot
		movie_poster: movie_hash.movie_poster
		)	

	end



	def show
		
	end


end
