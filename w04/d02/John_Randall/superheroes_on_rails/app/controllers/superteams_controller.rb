class SuperteamsController < ApplicationController

  def index
    @superteams = Superteam.all
    
    # render json: @superteams
  end

  def show
    @superteam = Superteam.find_by(id: params[:id])
    @superheroes = Superhero.where(superteam_id: params[:id])
    # render json: @superteam
  end

  def destroy
    Superteam.find_by(id: params[:id]).destroy
    redirect_to '/superteams'
  end

  def new
    @superteam = Superteam.new()
    render json: @superteam
  end

  # def create

  def edit
    @superteam = Superteam.find_by(id: params[:id])
  end

  def update
    superteam = Superteam.find_by(id: params[:id])        #QUESTION: WHY DOES THIS WORK IF I DON'T PASS IT FROM EDIT.
    # render json: superteam
    # render json: superteam_attributes                     #QUESTION: WHY DOESn"T ID COME THROUGH HERE?
    superteam.update_attributes(superteam_attributes)

    redirect_to "/superteams/#{params[:id]}"               #QUESTION: WHY CAN't I CALL METHOD 'show' here
                                                        #QUESTION: WHY NO @ SYMBOL HERE? 
  end

  private

  # strong params
  def superteam_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:superteam).permit(:name, :headquarters, :headquarters_location)
  end

end
