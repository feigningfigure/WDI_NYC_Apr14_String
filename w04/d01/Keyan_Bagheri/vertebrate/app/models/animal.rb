class Animal < ActiveRecord::Base

	belongs_to :vertebrae
	# def self.save_animal(animal)
	# 	new_animal = Animal.new
	# 	new_animal.name = animal['name']
	# 	new_animal.vertebrae_id = animal['vertebrae_id']
	# 	new_animal.scientific_name = animal['scientific_name']
	# 	new_animal.characteristics = animal['characteristics']
	# 	new_animal.save
	# end

	# def self.edit_animal(animal,id)
	# 	updated_animal = Animal.find(id)
	# 	updated_animal.name = animal['name']
	# 	updated_animal.vertebrae_id = animal['vertebrae_id']
	# 	updated_animal.scientific_name = animal['scientific_name']
	# 	updated_animal.characteristics = animal['characteristics']
	# 	updated_animal.save
	# end

	# def self.delete(id)
	# 	deleted_animal = Animal.find(id)
	# 	deleted_animal.destroy
	# end
	
end
