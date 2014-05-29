example 1

colors = ["mauve", "chartreuse", "seafoam"]

def my_each (array)
	for item in array
		yield(item)
	end
end

my_each(colors) { |color| puts "I love #{color.upcase}!" }



example 2

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
  	data.each do |code, weathers|
		yield
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