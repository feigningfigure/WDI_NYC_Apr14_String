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