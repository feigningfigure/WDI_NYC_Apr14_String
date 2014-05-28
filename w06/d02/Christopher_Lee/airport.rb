api_response = {
    "airports" => {
        "LAX" => {},
        "LGA" => {},
        "BOS" => {}
    },
    "weather" => {
        "Severe Wind & Rain" => ["LGA"],
        "Flood Warning" => ["LGA", "BOS"]
    }
}

def airports_with_weather(data)
    airports = data["airports"].keys
    weather = data["weather"]
    pair_hash = {}
        weather.each do |k, v|
            # pair_hash[v] = K
        end


    airports.each do |airport|
        pair_hash[airport] = "rainy"
    end
    # # if value == airport
    # # pair_hash[airports key] == key

    # data["airports"]
    # # k
    # data["weather"]
    # # k v
    pair_hash
end

airports_with_weather(api_response) do |code, weathers|
    puts "<section>"
    puts "\t<h1>#{code}</h1>"
    weathers.each do |weather|
        puts "\t<div>#{weather}</div>"
    end
    puts "</section>"
end

# <section>
#     <h1>LAX</h1>
# </section>
# <section>
#     <h1>LGA</h1>
#     <div>Severe Wind & Rain</div>
#     <div>Flood Warning</div>
# </section>
# <section>
#     <h1>BOS</h1>
#     <div>Flood Warning</div>
# </section>


