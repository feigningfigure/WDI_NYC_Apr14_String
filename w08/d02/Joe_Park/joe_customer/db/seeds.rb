# Customer.delete_all

20.times do
  Customer.create({
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    loyalty_code: Faker::Internet.password
  })
end