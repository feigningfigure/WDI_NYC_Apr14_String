Line.delete_all
Station.delete_all
Stop.delete_all

Line.create(name:"1", color:"red")
Line.create(name:"2", color:"red")
Line.create(name:"3", color:"red")
Line.create(name:"4", color:"green")
Line.create(name:"5", color:"green")
Line.create(name:"6", color:"green")
Line.create(name:"6 Express", color:"green")
Line.create(name:"7", color:"purple")
Line.create(name:"7 Express", color:"purple")
Line.create(name:"A", color:"blue")
Line.create(name:"C", color:"blue")
Line.create(name:"E", color:"blue")
Line.create(name:"B", color:"orange")
Line.create(name:"D", color:"orange")
Line.create(name:"F", color:"orange")
Line.create(name:"M", color:"orange")
Line.create(name:"G", color:"lightgreen")
Line.create(name:"J", color:"brown")
Line.create(name:"Z", color:"brown")
Line.create(name:"L", color:"lightgrey")
Line.create(name:"S", color:"gray")
Line.create(name:"N", color:"yellow")
Line.create(name:"Q", color:"yellow")
Line.create(name:"R", color:"yellow")




url = "https://data.cityofnewyork.us/api/views/he7q-3hwy/rows.json"
results = HTTParty.get(url)

results["data"].each do |stop|
  Station.create({
    address: stop[9]
  })
  line_stops = stop[10].split("-")
  line_stops.each do |line|
    station = Station.find_by_address(stop[9])
    line_name = Line.find_by_name(line)
    if line_name
      line_id = line_name.id
      Stop.create({
        line_id: line_id,
        station_id: station.id
        })
    end
  end

end
