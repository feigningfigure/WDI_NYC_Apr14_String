ruby_colors = ["mauve", "chartreuse", "seafoam"]

ruby_colors.each (|color| puts "i love #{color}")

x = 0
while x < 3 do
	puts "i love #{ruby_colors[x]}"
	x +=1
end


for x in (0..2) do
	puts "i love #{ruby_colors[x]}"
end

until x == 3 do
	puts "i love #{ruby_colors[x]}"
	x +=1
end

x = 0
for x in (0..2) do 
	case x
	when 0
		puts "i love #{ruby_colors[x]}"
	when 1
		puts "i love #{ruby_colors[x]}"
	when 2
		puts "i love #{ruby_colors[x]}"
	end
	x +=1
end

# ruby my_each(colors) { |color| puts "I love #{color.upcase}!" }

def my_each(array)
	new_array = []

	for item in array
		if yield(item)
			new_array.push(item)
		end
	end
end

my_each(ruby_colors) do |color|
	puts "I love #{color.upcase}!"
end

#######################################

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
    weather_hash = {}
    data.each do |k, v|
    	if k == "weather"
    		v.each do |weather, symbol|
	    		if k == "airports"
	    			v.each do |code, value|
	    				weather_hash[code] = weather
	    			end
	    	

    yield(block)
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

