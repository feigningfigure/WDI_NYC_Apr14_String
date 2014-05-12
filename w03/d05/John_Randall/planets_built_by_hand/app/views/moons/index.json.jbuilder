json.array!(@moons) do |moon|
  json.extract! moon, :id, :name, :image_url, :diameter, :mass, :life
  json.url moon_url(moon, format: :json)
end
