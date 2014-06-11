# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all

10.times do

new_customer = Customer.create({
  name: Faker::Name.name,
  address: Faker::Address.street_address,
  email: Faker::Internet.email,
  loyalty_code: rand(0...2000)
  })

end
