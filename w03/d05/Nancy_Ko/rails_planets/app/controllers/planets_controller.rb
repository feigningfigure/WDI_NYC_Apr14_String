class PlanetsController < ApplicationController

	# GET / planets 
  def index
  	@planets = Planet.all
  end


# GET / planets / 1
  def show
  end

# GET / planets / new
  def new
  	@planets = Planet.create
  end

  def edit
  end


# POST / planets 
  def create
  	@planet = Planet.new(planet_params)
  end


# THIS SHOULD UPDATE 
  # def update
  # 	respond_to do |format|
  # 		if @planet.update
  # 			format.html {redirect_to @planets, notice: "Planet was successfully updated."}
  # 			format.json { render :show, status: :ok, location: @planet }
  # end
end
