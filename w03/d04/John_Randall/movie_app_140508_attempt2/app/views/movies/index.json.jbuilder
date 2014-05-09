json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :year, :rated, :released, :runtime, :genre, :director, :writer, :actors, :plot, :movie_poster
  json.url movie_url(movie, format: :json)
end
