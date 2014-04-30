require 'sinatra'
# require 'sinatra/reloader'


get '/' do
 "Good Morning!"
end

get '/:place' do
  place = params[:place]
  "Welcome to #{place}!"
end
