Person.delete_all
Computer.delete_all
Application.delete_all


#To seed people database
10.times do
person << Person.create({
  name: Faker::Name.name,
  profession: Faker::Lorem.sentence(3).to_s,
  })
end


  # To seed computer database (parallel to Oufits and a child of Person)
  computer_table = ["Apple","Samsung","Sony"]
  computers = []
  25.times do
    computers = Computer.create({
      owner: Faker::Name.name,
      maker: computer_table.sample
      })

    # To seed application database (a child of Computer and grandchild of Person)
    application_table = ["Indesign","Photoshop","Illustrator","Hipchat","Things","Evernote","Sublime","Rhino","3dsmax","ibook"]
    applications = []
    47.times do
    applications = Application.create({
      name: application_table.sample,
      description: Faker::Lorem.paragraphs(2).join("")
      })
    end

    unit_name = "units"
    # To add units to application
    all_application = Application.all
    2.times do
      sample_application = all_application.to_a.pop.name
      random_quantity = rand(1..3)
      computer.add_unit(
        random_quantity,
        sample_application,
        unit_name
        )
    end

     computer.save
     computers << computer
  end
    computers.each do |computer|
    person.computers << computer
  end

person.save
end











