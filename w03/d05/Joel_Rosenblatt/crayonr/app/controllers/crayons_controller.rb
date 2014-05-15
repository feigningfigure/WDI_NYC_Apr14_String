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
        intensity: crayon_attributes[:intensity],
        # randomly assigning an owner when a new crayon is made
        # this is a temporary workaround until we learn otherwise
        owner_id: Owner.all.sample.id
      })

    # useful for debugging
    # render json: params

    # send user back to all crayons page
    redirect_to crayons_path

  end

  def show
    # grab id from url params
    crayon_id = params[:id]

    # query database to find only the record that i need
    @crayon = Crayon.find(crayon_id)

    # render json: crayon
  end

end
