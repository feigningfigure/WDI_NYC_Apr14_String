require 'sinatra'

get '/' do
"Good morning"
end

get '/:SOME PLACE' do
  "Welcome to SOME PLACE"
end
