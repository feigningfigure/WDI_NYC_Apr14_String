Planets.delete_all

planets_array = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

i = 0

planets_array.length.times do
  Planets.create({name: planet_array[i], cookies: 0})
  i += 1
end
