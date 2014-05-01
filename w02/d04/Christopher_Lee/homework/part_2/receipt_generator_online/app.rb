require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
  erb :index
end



post '/students' do
  redirect "/students"


end

