class MyMoviesController < ActionController::Base

  # sets the default layout
  layout "application"

  def index

  end

  # def search


  # end

  def all

  	title = params[:title].gsub(' ', '%20')

	def create_database_entry(title)
	  api_keys_conversion_hash = {title: "Title", year: "Year", rated: "Rated", released: "Released", runtime: "Runtime", genre: "Genre", director: "Director", writer: "Writer", actors: "Actors", plot: "Plot", movie_poster: "Poster"}
	  url_string="http://www.omdbapi.com/?i=&t="
	  url = "#{url_string}#{title}"
	  movie_hash = JSON.parse(HTTParty.get(url))
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

  	create_database_entry(title)
	
  
  	@movies = MyMovie.all

  end

end