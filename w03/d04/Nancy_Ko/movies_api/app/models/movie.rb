class Movie < ActiveRecord::Base

# url = http://www.omdbapi.com/?="#{title}"


def movie_info(title)

	url = http://omdbapi.com/?="#{title}"
	binding.pry
	
	movie_info =  JSON.response(HTTParty.get(url))

end


def create
    @movie = movie.new(:title params[:title])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        end
end

end
