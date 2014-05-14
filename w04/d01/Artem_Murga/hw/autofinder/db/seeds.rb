# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make.create({
# 	name: "BMW",
# 	country: "Germany"
# 	})

# Make.create({
# 	name: "Nissan",
# 	country: "Japan"
# 	})


# 

# Model.create({
# 	name: "F36",
# 	make_id: 1
# 	})

# Customer.create(
# {
# 	name: "John"
# 	})

# Customer.create ({
# 	name: "Bill"
# 	})

Vin.create ({
	vin_number: rand(1000..2000),
	model_id: 1,
	customer_id: 1,
	})





