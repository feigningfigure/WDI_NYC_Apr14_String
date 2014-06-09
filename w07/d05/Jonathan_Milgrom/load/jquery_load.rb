require 'sinatra'
require 'pry'

get "/" do
    # binding.pry
    erb :index
end

get "/load" do
    # binding.pry
    items = []
    params["times"].to_i.times do
        items << "<li>LOADED FROM SERVER WITH #{params["enthusiasm"]} GUSTO</li>"
    end
    items
end

post "/load" do
    items = []
    # binding.pry
    params["times"].to_i.times do
        items << "<li>LOADED FROM SERVER WITH #{params["enthusiasm"]} GUSTO</li>"
    end
    items
end