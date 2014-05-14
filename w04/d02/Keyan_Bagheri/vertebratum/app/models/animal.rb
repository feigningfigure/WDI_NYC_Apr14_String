class Animal < ActiveRecord::Base

	belongs_to :vertebrae

	has_many :regions, through: :locations

	has_many :locations

	def add_location(quantity, unit_name, region_name)

		region = Region.find_by_name(region_name)

		if region

		self.locations << Location.create({
        quanitity: quantity,
        unit: unit_name,
        region: region
        })
		else
			puts "Failed to locate animal! No region with name #{region_name}"
			nil
		end
	end

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
