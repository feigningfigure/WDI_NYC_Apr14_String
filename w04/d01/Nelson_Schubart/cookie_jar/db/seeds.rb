# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



CookieWatcher.delete_all
# delete_all(conditions = nil) public
# Deletes the records matching conditions without instantiating the records first, and hence not calling the destroy method nor invoking callbacks. This is a single SQL DELETE statement that goes straight to the database, much more efficient than destroy_all. Be careful with relations though, in particular :dependent rules defined on associations are not honored. Returns the number of rows affected.

spring_wdi = ["Joe", "Artem", "John R.", "Wilson", "Nelson", "Chris B.", "Chris Lee", "Ben", "Joel", "Declan", "Andrew", "Manny", "Nancy", "Dara", "Jonathan", "Liz", "Jane", "Victor", "David", "Kyle", "Mason", "Sophie", "Zack"]

i = 0

spring_wdi.length.times do
    CookieWatcher.create({name: spring_wdi[i], cookies: 0})
    i += 1
end



