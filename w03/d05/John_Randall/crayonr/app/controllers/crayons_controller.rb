class CrayonsController < ApplicationController

  def index
    # if you want to just render one random color
    # render json: Crayon.all.sample

    @crayons = Crayon.all
    # render json: @crayons

    # this is the default behavior when you leave this blank
    render :index
  end

  def new
    # this method's job is to show you the form

    # WHY?!?!?!?! ... we'll get to that later
    # but it will make the form work
    @crayon = Crayon.new
  end

  def create
    # this method's job is to process the form

    # *** very important and sensitive method ***

    # params has your form data inside of a sub-hash
    crayon_attributes = params[:crayon]

    # forbidden mass-assignment ... until we learn how
    # Crayon.create(crayon_attributes)

    Crayon.create({
        name: crayon_attributes[:name],
        intensity: crayon_attributes[:intensity]
      })

    # useful for debugging
    # render json: params

    # send user back to all crayons page
    redirect_to crayons_path

  end

end
