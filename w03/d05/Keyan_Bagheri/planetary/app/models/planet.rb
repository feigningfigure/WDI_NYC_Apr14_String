class Planet < ActiveRecord::Base


	def self.save_planet(planet)
		new_planet = Planet.new
		new_planet.name = planet['name']
		new_planet.photo = planet['photo']
		new_planet.diameter = planet['diameter']
		new_planet.mass = planet['mass']
		new_planet.life = planet['life']
		new_planet.save
	end

	def self.edit_planet(planet,id)
		updated_planet = Planet.find(id)
		updated_planet.name = planet['name']
		updated_planet.photo = planet['photo']
		updated_planet.diameter = planet['diameter']
		updated_planet.mass = planet['mass']
		updated_planet.life = planet['life']
		updated_planet.save
	end

	def self.delete(id)
		deleted_planet = Planet.find(id)
		deleted_planet.destroy
	end


end