require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

get '/movie/:title' do
  # grabbed data from the internet
  movie_data = HTTParty.get("http://www.omdbapi.com/?s=#{params[:title]}")
  # parse the JSON and transform it into Ruby Hash
  hash = JSON.parse(movie_data)
  #this sets @title to the first title in search results
  @title = hash["Search"][0]["Title"]
  # this sets @year to the first year in the search results
  @year = hash["Search"][0]["Year"]
  erb :show
end
