require 'sinatra'
require 'sinatra/reloader'

get '/name/:id' do
  # Some kind of index or landing page

  "<h1>Hello #{params[:id]}</h1>"
end

get '/:activity/:name1/:name2' do

  "<h1>#{params[:name1]} and #{params[:name2]} are having a lovely #{params[:activity]} ceremony"
end
