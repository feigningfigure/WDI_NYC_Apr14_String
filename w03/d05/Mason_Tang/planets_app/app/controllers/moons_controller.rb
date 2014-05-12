class MoonsController < ApplicationController

  def index
    # @moons = Moon.all
    @planet = Planet.find(params[:planet_id])
    @moons = @planet.moons
  end


  def new
    # @moon = Moon.new
    @planet = Planet.find(params[:planet_id])
    @moon = @planet.moons.build

  end

  def create

      @planet = Planet.find(params[:planet_id])
      moon_attributes = params[:moon]
      @moon = @planet.moons.create({
        name: moon_attributes[:name],
        image_url: moon_attributes[:image_url],
        planet_id: moon_attributes[:planet_id]
      })

      # if @moon.save
      #   redirect_to planet_moon_url(@planet, @moon)
      # else
      #   render :action => "new"
      # end



    # moon_attributes = params[:moon]

    # Moon.create({
    #     name: moon_attributes[:name],
    #     image_url: moon_attributes[:image_url],
    #     planet_id: moon_attributes[:planet_id]
    #   })

    # redirect_to "/planets"
  end

  def show
    # @moon = Moon.find_by_planet_id(params[:planet_id])
    # planet_id = params[:id]
     # @moon = Moon.where(planet_id: params[:planet_id])
     @planet = Planet.find(params[:planet_id])
     @moon = @planet.moons.find(params[:id])



  end


end
