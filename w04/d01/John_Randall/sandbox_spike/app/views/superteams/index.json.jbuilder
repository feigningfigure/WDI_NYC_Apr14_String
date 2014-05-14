json.array!(@superteams) do |superteam|
  json.extract! superteam, :id
  json.url superteam_url(superteam, format: :json)
end
