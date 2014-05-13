# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


CookieWatcher.delete.all

$spring_wdi = ["Joe", "Artem", "John R.", "Wilson", "Nelson", "Chris B.", "Chris Lee", "Ben", "Joel", "Declan", "Andrew", "Manny", "Nancy", "Dara", "Jonathan", "Liz", "Jane", "Victor", "David", "Kyle", "Keyan", "Mason", "Sophie", "Zack"]

while $spring_wdi.length > 0 
  CookieWatcher.create(name: $spring_wdi.pop, cookies: rand(1..10))
end
