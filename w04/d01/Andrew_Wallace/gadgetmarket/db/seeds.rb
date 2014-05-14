Company.delete_all

companies = []
10.times do
  #create a company and shovel it into the companies array
  companies << Company.create({
    name: Faker::Company.name
    })
end

#---SEED PRODUCTS (NOT WORKING)---#
# products = []
# 5.times do
#   #creatre a product and shovel it into the products array
#   products << Product.create({
#     name: Faker::Commerce.product_name,
#     price: Faker::Commerce.price,
#     description: Faker::Lorem.sentence(2).to_s,
#     company_id: company.id
#     })
# end
