

10.times do
  family = Family.new({
    name: Faker::Name.name,
    relationship: Faker::Lorem.sentence(3).to_s
    })

  childrens = []

  3.times do
    childrens << children.create({
      name: Faker::Name.name,
      content: Faker::Lorem.paragraphs(2).join("")
      })
  end

  childrens.each do |recipe|
    family.childrens << children
  end

  family.save!

end
