class PlanetsController < ApplicationController

	def index
		
		@planets = Planet.all

	end




	def new
		@planet = Planet.new
	end




	def create_planet
		planet_attributes = params[:planet]

		 Planet.create({
        name: planet_attributes[:name],
        image_url: planet_attributes[:image_url],
  
        diameter: planet_attributes[:diameter],
        mass: planet_attributes[:mass],
  
        life: planet_attributes[:life],
      })
   

    redirect_to "/planets"
	end




	def show
	planet_id = params[:id]

    # query database to find only the record that i need
    @planet = Planet.find(planet_id)



	end



	def newmoon

		@moon = Moon.new
		
	end


	def create_moon

	moon_attributes = params[:moon]

		 Moon.create({
        name: moon_attributes[:name],
        image_url: moon_attributes[:image_url],
  
        planet_id: moon_attributes[:planet_id],
      })
   

    redirect_to "/planets"
	end




end