SubwayLine.delete_all

SubwayLine.create(name:"1", color:"red")
SubwayLine.create(name:"2", color:"red")
SubwayLine.create(name:"3", color:"red")
SubwayLine.create(name:"4", color:"green")
SubwayLine.create(name:"5", color:"green")
SubwayLine.create(name:"6", color:"green")
SubwayLine.create(name:"6 Express", color:"green")
SubwayLine.create(name:"7", color:"purple")
SubwayLine.create(name:"7 Express", color:"purple")
SubwayLine.create(name:"A", color:"blue")
SubwayLine.create(name:"C", color:"blue")
SubwayLine.create(name:"E", color:"blue")
SubwayLine.create(name:"B", color:"orange")
SubwayLine.create(name:"D", color:"orange")
SubwayLine.create(name:"F", color:"orange")
SubwayLine.create(name:"M", color:"orange")
SubwayLine.create(name:"G", color:"lightgreen")
SubwayLine.create(name:"J", color:"brown")
SubwayLine.create(name:"Z", color:"brown")
SubwayLine.create(name:"L", color:"lightgrey")
SubwayLine.create(name:"S", color:"gray")
SubwayLine.create(name:"N", color:"yellow")
SubwayLine.create(name:"Q", color:"yellow")
SubwayLine.create(name:"R", color:"yellow")

mta_hash = HTTParty.get("https://data.cityofnewyork.us/api/views/he7q-3hwy/rows.json")

station_names = []

mta_hash["data"].each do |address|
  address_array = address.to_s.split(",")
    station_names << address_array[9].gsub( "\"", "")
    end

station_names.each do |name|
  Station.create({address: name})
    end

stations = []
station_stops = {}

mta_hash["data"].each do |address|
  address_array = address.to_s.split(",")
    station = address_array[9].gsub( "\"", "")
    stops = address_array[10].to_s.split("-")
      stops.each do |stop, station|
        station_stops[:station] = stop
      end
    end
