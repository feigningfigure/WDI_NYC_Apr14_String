require 'sinatra'

get "/" do
    erb :index
end

get "/load" do
    items = []

    params["times"].to_i.times do
        items << "<li>LOADED FROM SERVER WITH #{params["enthusiasm"]} GUSTO</li>"
    end

    items
end

post "/load" do
    items = []

    params["times"].to_i.times do
        items << "<li>LOADED FROM SERVER WITH #{params["enthusiasm"]} GUSTO</li>"
    end

    items
end