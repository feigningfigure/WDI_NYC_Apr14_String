# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# blow up database each time
Team.delete_all
Player.delete_all

sponsors = ["Nike", "UnderArmor", "Adidas", "Puma", "Wilson", "Louisville Slugger", "TSX", "Russell", "NewEra"]

sponsors.each do |brand_name|
  Sponsor.create({
    brand: brand_name
    })
end

  10.times do
  team = Team.new({
    # name:
    city: Faker::Address.city,
    mascot: Faker::Lorem.sentence(2).to_s
        # record:
        # division:
    })

  # empty array of recipes
  players = []

  # make 10 random recipes
  20.times do
    #add each of those 10 recipes to the array of recipes
    players << Player.create({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      jersey_number: rand(1..56)
      # position:
      })
  end

  # add each recipes from the array to my cookbook
  players.each do |player|
    # use .recipes to attach recipes
    team.players << player
  end

  # save the newly created cookbook
  team.save!

end

