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
        data["airports"].each do |code|
            weathers = []
            data["weather"].each do |x,v|
                if v == code
                    weathers << x
                end
            end
            yield(code,x)
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