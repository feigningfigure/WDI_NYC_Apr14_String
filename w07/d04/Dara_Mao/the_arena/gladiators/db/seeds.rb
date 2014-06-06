# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times do

 gladiator = Gladiator.new({

    name: Faker::Name.name,
    weapon: Faker::Address.street_name,
    victory_count: Faker::Address.zip
    })

 gladiator.save

end
