require 'sinatra'
require 'sinatra/reloader'
require 'musicbrainz'
require 'pry'

get '/' do
  erb :home
end

get '/degrees' do
  @title = "Six Degrees Results"
  erb :degrees
end

get '/about' do
  @title = "All About Johnny"
  erb :about
end

# Hey John, does it make sense to you to see a link of the Degrees/RESULTS page on the homepage? I don't think so. But I'm just creating it here to show you the entire skeleton of this website.

get '/contact' do
  @title = "Contact us"
  erb :contact
end

not_found do
  @title = "Get Out of Folsom"
  erb :error
end

