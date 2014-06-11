make = ['BMW', "Honda", "Toyota"]
model = [1,2,3]
year = [2007, 2008, 2009]
color = ["red", "black", "white"]

3.times do 
	Car.create( {
		year: year.sample,
		model: model.sample,
		make: make.sample,
		color: color.sample
		})
end