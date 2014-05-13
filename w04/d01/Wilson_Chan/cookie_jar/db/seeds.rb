#deletes the entire contents first! good to use if you use the seed file.
CookieWatcher.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
spring_wdi = ["Joe", "Artem", "John R.", "Wilson", "Nelson", "Chris B.", "Chris Lee", "Ben", "Joel", "Declan", "Andrew", "Manny", "Nancy", "Dara", "Jonathan", "Liz", "Jane", "Victor", "David", "Kyle", "Keyan", "Mason", "Sophie", "Zack"]

#to loop throught the array

i = 0

spring_wdi.length.times do
  CookieWatcher.create({name:spring_wdi[i]}, cookies :0)
  i += 1
end
