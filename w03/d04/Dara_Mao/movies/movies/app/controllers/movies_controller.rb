class MoviesController < ActionController::Base

layout "application"

def index
end

def search
  # movie_hash.each.do |title|
  # Movie.get(Movie.search(title))
  # JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=True%20Grit").body)
  # title = params[:title]
  # year = movie.year

#Posting the results from the API and search title to the database
  Movie.create(title:title )
# redirect_to '/all'
end

def all
   @movies = Movie.all
end

end

class MoviesController < ActionController::Base

  layout "application"

  def index

  end

  def search
    movie_title = params[:movie_title]
    Movie.search(movie_title)
    redirect_to '/all'
  end

  def all
    @movies = Movie.all
  end

end


# post '/posts' do
#   # processes new post data
#   title = params[:title]
#   body = params[:body]
#   author = params[:author]

#   Post.create(
#     title: title,
#     body: body,
#     author: author
#   )
#   redirect "/"
# end
