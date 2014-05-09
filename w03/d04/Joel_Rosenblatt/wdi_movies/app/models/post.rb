class Post < ActiveRecord::Base

  def movie_info
    # make API call, turn the JSON into a Hash
    @movie_title = params[:movie_title]
    url = "http://www.omdbapi.com/?t=<%= @movie_title %>"
    response_hash = HTTParty.get(url)

    # extract the URL of photo and add it to an array of URLs
    @title = response_hash["Title"]
    @year = response_hash["Year"]
    @rated = response_hash["Rated"]
    @released = response_hash["Released"]
    @runtime = response_hash["Runtime"]
    @genre = response_hash["Genre"]
    @director = response_hash["Director"]
    @writer = response_hash["Writer"]
    @actors = response_hash["Actors"]
    @plot = response_hash["Plot"]
    @poster_url = response_hash["Poster"]

    # return just the URL

  end

end
