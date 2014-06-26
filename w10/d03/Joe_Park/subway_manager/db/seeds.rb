SubwayLine.delete_all
Station.delete_all

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


url = "https://data.cityofnewyork.us/api/views/he7q-3hwy/rows.json"

jsonresponse = JSON.parse(HTTParty.get(url).body)

jsonresponse["data"].each do |station|
  new_station = Station.create({
    address: station[9]
  })

  station[10].split("-").each do |line|
    sub_line = SubwayLine.find_by_name(station[10])
    if sub_line
      stop = Stop.new
        stop.station_id = new_station.id
        stop.subway_line_id = sub_line.id
      stop.save
    end
  end
end






