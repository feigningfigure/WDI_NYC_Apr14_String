# timer
start = Time.now

Crayon.delete_all
Owner.delete_all

owners = []

funny_titles = [
  "Sgt. Pepper",
  "Mr. Sir",
  "Mrssss.",
  "King",
  "Sensei"
]

100.times do
  owners << Owner.create({
    name: Faker::Name.name,
    formal_title: funny_titles.sample
    })
end


300.times do

  # this will make a new instance of Crayon
  # then save it to the database in one swoop.
  # Crayon.create({
  #   name: Faker::Commerce.color,
  #   intensity: rand(100),
  #   # # John's Method - least number of db queries
  #   # owner_id: owners.sample.id

  #   # Ben/Liz method - does a .all query every time
  #   # owner_id: Owner.all.sample.id
  # })

  # Omar's other method...

  # post-pone "CREATE" query
  crayon = Crayon.new({
    name: Faker::Commerce.color,
    intensity: rand(100)
  })

  # .owner is only possible after adding "belongs_to" to model
  # Keyan - few queries
  crayon.owner = owners.sample

  # delays the DB writing until now
  crayon.save


end

total_time = Time.now-start
puts "Total Time: #{total_time.to_f}"
