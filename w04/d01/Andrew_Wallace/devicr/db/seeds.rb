User.destroy_all
Device.destroy_all

user = User.create({
  name: "Andrew Wallace"
  })

Device.create({
  manufacturer: "Apple",
  name: "Macbook Pro",
  year: 2012,
  purchase_date: "March 6, 2014",
  description: "13-inch with core-i7, 16GB RAM, 256GB SSD primary drive, and a 750GB secondary HD."
  user_id: user.id
  })
