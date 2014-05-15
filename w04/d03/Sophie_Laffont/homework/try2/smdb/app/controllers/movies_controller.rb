class MoviesController < ActionController::Base

	def index
		@movies = Movie.all
	end

	def new
		@movie =Movie.new
	end



	def create

	end

	def show

	end

end