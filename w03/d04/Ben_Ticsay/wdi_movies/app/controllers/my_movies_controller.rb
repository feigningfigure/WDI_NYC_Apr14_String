class MyMoviesController < ActionController::Base

  # sets the default layout
  layout "application"

def index

end

def create
	movie_title = params[:title]
	MyMovie.search(movie_title)
	@movie = MyMovie.create(:title=>[:title])

redirect_to '/movie/#{@movie.id}/show'
end

def show
	@movie =MyMovie.find(params)
end



end