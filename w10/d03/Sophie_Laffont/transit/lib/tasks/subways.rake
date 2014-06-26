

namespace :subways do
  task station: :environment do
   response = HTTParty.get("https://data.cityofnewyork.us/api/views/he7q-3hwy/rows.json")
   stations = response['data']
   stations.each do |station|
      subway_lines = station[10].split('-')
      subway_lines.each do |line|
         subway_line = SubwayLine.where(:name => line)[0]
         unless subway_line.nil?
            subway_line.stations << Station.where(:address => station[9]).first_or_create
            subway_line.save
         end
      end
   end
  end
end
