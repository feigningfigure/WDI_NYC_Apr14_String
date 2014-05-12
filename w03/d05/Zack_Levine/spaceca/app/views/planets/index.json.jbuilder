json.array!(@planets) do |planet|
  json.extract! planet, :id, :name, :image_url, :diameter, :mass, :life
  json.url planet_url(planet, format: :json)
end
