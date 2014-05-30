# killa session destroy
Member.delete_all
Auction.delete_all

# build
10.times do

members = Member.new({
  screen_name: Faker::Name.name,
  member_profile: Faker::Lorem.paragraphs(2).join("")
})

auctions = Auction.new({
  item: Faker::Commerce.product_name,
  description: Faker::Company.catch_phrase,
  member_id: Faker::Number.number(5)
  })

members.save!
auctions.save!
end
