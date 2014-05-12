class Moons < ActiveRecord::Base

	def self.save_moon(moon)
		new_moon = Moons.new
		new_moon.name = moon['name']
		new_moon.planet_id = moon['planet_id']
		new_moon.diameter = moon['diameter']
		new_moon.mass = moon['mass']
		new_moon.life = moon['life']
		new_moon.save
	end

	def self.edit_moon(moon,id)
		updated_moon = Moons.find(id)
		updated_moon.name = moon['name']
		updated_moon.planet_id = moon['planet_id']
		updated_moon.diameter = moon['diameter']
		updated_moon.mass = moon['mass']
		updated_moon.life = moon['life']
		updated_moon.save
	end

	def self.delete(id)
		deleted_moon = Moons.find(id)
		deleted_moon.destroy
	end

end
