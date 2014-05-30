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

def airports_with_weather(input_hash)
	# FILL ME IN
	input_hash['airports'].each_key do |airport_code|
		weather_conditions_at_airport_arr = []
		input_hash['weather'].each do |weather_condition_k, airport_code_array_v|
			if airport_code_array_v.include? airport_code
				weather_conditions_at_airport_arr << weather_condition_k
			end
		end
	yield(airport_code, weather_conditions_at_airport_arr)
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





#### SHOULD OUTPUT LIKE THIS
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