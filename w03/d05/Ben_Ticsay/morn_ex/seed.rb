
5.times do 
Human.create({
	name: Faker::Name.name,
	age: rand(18..99)
	gender: ["man", "woman"].sample
	})
end