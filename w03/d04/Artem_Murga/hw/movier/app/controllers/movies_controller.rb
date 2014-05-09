class MoviesController < ActionController::Base

	layout "application"


	def index

	end

	def result
		movie_name = params[:movie_name].gsub(' ', "+")
		raw = HTTParty.get("http://www.omdbapi.com/?i=&t=" + "#{movie_name}")
		@result_hash = JSON.parse(raw)
		# Movie.create(@result_hash)
		@result_hash
	end


	#should I use @variable or method in views? as far as I understand
	# method is for routing, variable is for views files?
	def all
		@all = Movie.all
	end

	def save
		Movie.create(result)
	end


end 