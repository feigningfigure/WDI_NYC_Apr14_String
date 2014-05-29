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

# I can define a block-taking method EXPLICITLY, like this...
# def airports_with_weather(data, &block)

# Or IMPLICITLY like this, and use yield() later.
def airports_with_weather(data)
    # EXPLICIT: if block.nil?
    if !block_given?
        puts "I got all these airports and all this weather, whaddya want me to do?"
        return nil
    end

    data["airports"].each_key do |code|
        weathers = data["weather"].keys.select do |weather|
            data["weather"][weather].include?(code)
        end

        # EXPLICIT: block.call(code, weathers)
        yield(code, weathers)
    end
end

# Call using a block
airports_with_weather(api_response) do |code, weathers|
    puts "<section>"
    puts "\t<h1>#{code}</h1>"
    weathers.each do |weather|
        puts "\t<div>#{weather}</div>"
    end
    puts "</section>"
end

puts

# This variable contains an instance of the Proc class
print_warning_if_weather_sucks = Proc.new do |code, weathers|
    if weathers.length > 1
        puts "DANGER! The weather at #{code} is awful."
    end
end

puts "Call using a Proc TURNED INTO a block."
airports_with_weather(api_response, &print_warning_if_weather_sucks)

puts

# What if I define this using a method?
def print_warning_if_weather_sucks_method(code, weathers)
    if weathers.length > 1
        puts "DANGER! The weather at #{code} is awful."
    end
end

# First, turn my method into a Proc
print_warning_proc = method(:print_warning_if_weather_sucks_method)
# Now, pass that Proc into my airports function as a block

puts "Call using a method TURNED INTO a Proc TURNED INTO a block"
airports_with_weather(api_response, &print_warning_proc)

puts

airports_with_weather(api_response)

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
