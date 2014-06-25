# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create!(
name: 'Ebony Stooge',
address:'111 Pennypinching Drive, Miserly, NO, 11111',
email: 'stingy@money.com',
loyalty_code: 1111,
   )

Person.create!(
name: 'Angelina Jolie',
address: '6969 Seduction Drive, Horny, ME, 6969',
email: 'angie@jolie.com',
loyalty_code: 6969,
   )
