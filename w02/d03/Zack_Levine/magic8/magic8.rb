require 'sinatra'
require 'sinatra/reloader'
require 'haml'

#routes
get '/' do
  haml :index
  
end

