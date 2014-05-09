class MyMoviesController < ActionController::Base

  # sets the default layout
  layout "application"

def index

end

def create
	movie_title = params[:title]
	url_movie_title = movie_title.gsub(' ', '%20')
	movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{url_movie_title}"))
	# MyMovie.search(movie_title)

	m_ovie = MyMovie.new

	m_ovie.create(movie_hash["Title"])




# 	url_movie_title = movie_title.gsub(' ', '%20')
# 	movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{url_movie_title}"))

# 		@m_ovie = MyMovie.new

# 	@m_ovie.create (


# m_ovie.title = movie_hash["Title"]
# m_ovie.year = movie_hash["Year"]
# m_ovie.rated = movie_hash["Rated"]
# m_ovie.released = movie_hash["Released"]
# m_ovie.runtime = movie_hash["Runtime"]
# m_ovie.genre = movie_hash["Genre"]
# m_ovie.director = movie_hash["Director"]
# m_ovie.writer = movie_hash["Writer"]
# m_ovie.actors = movie_hash["Actors"]
# m_ovie.plot = movie_hash["Plot"]
# m_ovie.movie_poster = movie_hash["Movie Poster"]

# 	)	

	# MyMovie.create(movie_title)
	# @movie = MyMovie.create(:title=>[:title])

# redirect_to '/:title/show'
end

def show
	@movie =MyMovie.find(params)
end



end