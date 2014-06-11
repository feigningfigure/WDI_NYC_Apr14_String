Customer.delete_all

10.times do

new_customer = Customer.create({
  name: Faker::Name.name,
  address: Faker::Address.street_address,
  email: Faker::Internet.email,
  loyalty_code: 12345
  })

end
