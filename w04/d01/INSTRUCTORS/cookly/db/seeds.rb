# blow up database each time
Cookbook.delete_all

100.times do

  Cookbook.create({
    title: Faker::Lorem.sentence(3).to_s,
    description: Faker::Lorem.paragraphs(2).join("")
    })

end
