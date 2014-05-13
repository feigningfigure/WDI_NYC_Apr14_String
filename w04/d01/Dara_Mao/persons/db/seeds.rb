Person.delete_all
# Outfit.delete_all
Computer.delete_all
Application.delete_all


#To seed people database
20.times do
person = Person.new({
  name: Faker::Name.name,
  profession: Faker::Lorem.sentence(3).to_s,
  })

  # # To seed the outfits database
  # @type_table = ["shirt","pants","t-shirt","socks","dress","jeans","tie","belt","scarf","hat",""]

  # outfits = []
  # 50.times do
  # outfits << Outfit.create({
  #   type: @type_table.sample,
  #   color: Faker::Commerce.color
  #   })
  # end
  # # Add each outfit to a person
  # outfits.each do |outfit|
  #   person.outfits << outfit
  # end

  # To seed computer database (parallel to Oufits and a child of Person)
  @computer_table = ["Apple","Samsung","Sony"]
  computers = []
  25.times do
    computers << Computer.new({
      owner: Faker::Name.name,
      maker: @computer_table.sample
      })
  end
   # Add each outfit to a person
  computers.each do |computer|
    person.computers << computer
  end

    # To seed application database (a child of Computer and grandchild of Person)
    @application_table = ["Indesign","Photoshop","Illustrator","Hipchat","Things","Evernote","Sublime","Rhino","3dsmax","ibook"]
    applications = []
    47.times do
    applications << Application.create({
      name: @application_table.sample,
      description: Faker::Lorem.paragraphs(2).join("")
      })
    end

    applications.each do |application|
      computers.applications << application
    end

  computers.save
person.save
end











