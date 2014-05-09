class MoviesController < ActionController::Base

	# sets the default layout
	layout "application"

	def index
		# this makes @posts available to
		# app/views/posts/index.html.erb
		@movies = Movie.first(15)
	end

	def new
		
	end

	def result
		title = params[:title].gsub(" ", "+")
		year = params[:year]
		if year == "" 
			year = nil 
		end
		@new_movie = Movie.movie_info(title, year)

	end	

	def all
		@collection = Movie.all


		title = params[:title]
		year = params[:year]
		rated = params[:rated]
		released = params[:released]
		runtime = params[:runtime]
		genre = params[:genre]
		director = params[:director]
		writer = params[:writer]
		actors = params[:actors]
		plot = params[:plot]
		movieposter = params[:movieposter]

		Movie.create(
			title: title,
			year: year,
			rated: rated,
			released: released,
			runtime: runtime,
			genre: genre,
			director: director,
			writer: writer,
			actors: actors,
			plot: plot,
			movieposter: movieposter
		)
	end

end

