class Vertebrae < ActiveRecord::Base

	has_many :animals

	# def self.save_vertebrae(vertebrae)
	# 	new_vertebrae = Vertebrae.new
	# 	new_vertebrae.name = vertebrae['name']
	# 	new_vertebrae.scientific_name = vertebrae['scientific_name']
	# 	new_vertebrae.characteristics = vertebrae['characteristics']
	# 	new_vertebrae.save
	# end

	# def self.edit_vertebrae(vertebrae,id)
	# 	updated_vertebrae = Vertebrae.find(id)
	# 	updated_vertebrae.name = vertebrae['name']
	# 	updated_vertebrae.scientific_name = vertebrae['scientific_name']
	# 	updated_vertebrae.characteristics = vertebrae['characteristics']
	# 	updated_vertebrae.save
	# end

	# def self.delete(id)
	# 	deleted_vertebrae = Vertebrae.find(id)
	# 	deleted_vertebrae.destroy
	# end



end
