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
    # FILL ME IN
    data.each do |airports, weather|
        airports.each do |airport_sym,value|
            #returns each airport's name
            return airport_sym
        end

        weather.each do |weather_msg, airport_name|
            #returns the weather msg if the airport name is equal to airport sym
            return weather_msg if airport_name.include? (airport_sym)
        end
    end

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
