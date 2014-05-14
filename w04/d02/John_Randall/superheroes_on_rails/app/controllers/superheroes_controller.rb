class SuperheroesController < ApplicationController
  # :routes
  def index
  	# render text: 'index!!!'
  	@superheroes = Superhero.all
  end

  def show
  	# render json: Superhero.find_by(id: params[:id])
	@superhero = Superhero.find_by(id: params[:id])
  end

  def destroy
    Superhero.find_by(id: params[:id]).destroy				#QUESTION: WHY IS THIS HAPPENING TWICE? 
    redirect_to '/superheroes'
  end

  def new
    @superhero = Superhero.new()
    # render json: @superhero
  end

  def create
    # render json: params[:name]
    Superhero.create(superhero_attributes)
      
    redirect_to '/superheroes'
  end

  def edit
    @superhero = Superhero.find_by(id: params[:id])
  end

  def update
    superhero = Superhero.find_by(id: params[:id])        #QUESTION: WHY DOES THIS WORK IF I DON'T PASS IT FROM EDIT.
    # render json: superhero
    # render json: superhero_attributes                     #QUESTION: WHY DOESn"T ID COME THROUGH HERE?
    superhero.update_attributes(superhero_attributes)

    redirect_to "/superheroes/#{params[:id]}"               #QUESTION: WHY CAN't I CALL METHOD 'show' here
                                                        #QUESTION: WHY NO @ SYMBOL HERE? 
  end

  private

  # strong params
  def superhero_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:superhero).permit(:name, :super_power, :superteam_id)
  end

end


