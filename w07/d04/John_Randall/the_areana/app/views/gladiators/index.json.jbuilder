json.array!(@gladiators) do |gladiator|
  json.extract! gladiator, :id, :name, :weapon, :victory_count
  json.url gladiator_url(gladiator, format: :json)
end
