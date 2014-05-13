# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Device.destroy_all

User.create({
  name: "Andrew Wallace"
  })

Device.create({
  manufacturer: "Apple",
  model: "Macbook Pro",
  year: 2012,
  purchase_date: "March 6, 2014",
  description: "13-inch with core-i7, 16GB RAM, 256GB SSD primary drive, and a 750GB secondary HD."
  })
