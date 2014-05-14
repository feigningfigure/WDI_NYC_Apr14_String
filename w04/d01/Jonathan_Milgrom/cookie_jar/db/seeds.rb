CookieWatcher.delete.all

spring_wdi = ["Joe", "Artem", "John R.", "Wilson", "Nelson", "Chris B.", "Chris Lee", "Ben", "Joel", "Declan", "Andrew", "Manny", "Nancy", "Dara", "Jonathan", "Liz", "Jane", "Victor", "David", "Kyle", "Mason", "Sophie", "Zack"]

spring_wdi.each do |student|
	CookieWatcher.create ({
		name: student,
		cookies: 0
		})
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
