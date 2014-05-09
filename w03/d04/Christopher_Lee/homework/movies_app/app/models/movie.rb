class Movie < ActiveRecord::Base

  def self.search(movie_title)
    movie_title_clean = movie_title.gsub(" ", "%20")
    response_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?t=#{movie_title_clean}").body)
    m = Movie.new
    m.title = response_hash["Title"]
    m.year = response_hash["Year"]
    m.rated = response_hash["Rated"]
    m.released = response_hash["Released"]
    m.runtime = response_hash["Runtime"]
    m.genre = response_hash["Genre"]
    m.director = response_hash["Director"]
    m.writer = response_hash["Writer"]
    m.actors = response_hash["Actors"]
    m.plot = response_hash["Plot"]
    m.language = response_hash["Language"]
    m.country = response_hash["Country"]
    m.awards = response_hash["Awards"]
    m.poster = response_hash["Poster"]
    m.metascore = response_hash["Metascore"]
    m.imdbrating = response_hash["imdbRating"]
    # m.imbdbvotes = response_hash["imdbVotes"]
    # m.imdbid = response_hash["imdbID"]
    # m.type = response_hash["Type"]
    # m.response = response_hash["Response"]
    m.save
  end

end
