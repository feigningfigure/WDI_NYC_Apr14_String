require 'sinatra'
require 'sinatra/reloader'

get "/" do
 erb :index
end

get "/load" do
  items = []

  params["items"].to_i.times do
    items << "<li>LOADED FROM SERVER</li>"
  end

  items
end



