require 'sinatra'
require 'sinatra/reloader'

get "/name/:name" do
  "Hello #{:name}"
end
