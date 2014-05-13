Scene.delete_all
Dialogue.delete_all




100.times do

  scene = Scene.new({
    title: Faker::Lorem.sentence(3).to_s,
    heading: Faker::Lorem.sentence(3).to_s
    })


  dialogues = []


  10.times do

    dialogues << Dialogue.create({
      character: Faker::Name.name,
      content: Faker::Lorem.paragraphs(2).join("")
      })
  end

 
  dialogues.each do |dialogue|

    scene.dialogues << dialogue
  end


  scene.save!

end
