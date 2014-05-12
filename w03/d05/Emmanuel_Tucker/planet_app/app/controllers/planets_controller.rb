class PlanetsController < ApplicationController



def index


     @planets = Planet.all

     render :index

end



def new

 @planet = Planet.new


end


def create

planet_attributes = params[:planet]




Planet.create({
        name: planet_attributes[:name],
        intensity: planet_attributes[:intensity],

        owner_id: Owner.all.sample.id
      })


    redirect_to planet_path

  end

  def show
    # grab id from url params
    planet_id = params[:id]


    @planet = planet.find(planet_id)

  end
end

