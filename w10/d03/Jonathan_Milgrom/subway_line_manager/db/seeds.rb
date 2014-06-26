SubwayLine.delete_all
Station.delete_all
Stop.delete_all

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

stations = HTTParty.get("https://data.cityofnewyork.us/api/views/he7q-3hwy/rows.json")

stations["data"].each do |station|
	db_station = Station.create({
		address: station[9]
		})
	subway_line_names = station[10].split("-").select {|name| SubwayLine.find_by(name: name)}
	subway_line_names.each do |line_name|
		Stop.create({
			station_id: db_station.id,
			subway_line_id: SubwayLine.find_by(name: line_name).id
			})
	end
end
