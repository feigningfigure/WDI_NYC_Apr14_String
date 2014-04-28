require 'sinatra'
require 'sinatra/reloader'

# HTTP VERB + URI Pattern + Block of Code
get "/" do
  "<h2>Hello World!</h2>"
end

get "/:name" do
  params[:name]
end
