class MooonsController < ApplicationController
def index
    @mooons = Mooon.all
  end


  def new
    @mooon = Mooon.new
  end

   def create
    mooon_attributes = params[:mooon]
    Mooon.create({
      name:mooon_attributes[:name],
      image_url:mooon_attributes[:image_url],
      diameter:mooon_attributes[:diameter],
      mass:mooon_attributes[:mass],
      life:mooon_attributes[:life],
      planet_name: mooon_attributes[:planet_name]
      })
      redirect_to mooons_path
    end

end
