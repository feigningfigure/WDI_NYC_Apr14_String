class BoxingTeamsController < ApplicationController

  def index
    @boxingteam = BoxingTeam.order(:name, :location)

    # new instance of boxing team for the form helper
    @boxingteam = BoxingTeam.new
    # render json: @boxingteams
  end

  def show
    # by default...
    # render :name_of_this_method

    # define @boxingteam
    @boxingteam = BoxingTeam.find(params[:id])

    # makes the form work
    @boxer = Boxer.new

    # binding.pry
  end

  def create
    # add .create soon..

    # old way...
    # cookbook_attributes = params[:cookbook]

    # new way... *but requires private_method
    BoxingTeam.create(boxingteam_attributes)

    render json: {
      strong_params: boxingteam_attributes
    }


    # when done...
    redirect_to boxingteams_path
  end

  #def edit
   # @boxingteam = BoxingTeam.find(params[:id])
    # render json: @cookbook
    #render partial: "boxingteamform", locals: { boxingteam_local: @boxingteam }
  #end

   def update

    boxingteam = BoxingTeam.find(params[:id])

    boxingteam.update_attributes(boxingteam_attributes)

    # render json: cookbook
    redirect_to "/boxingteams/#{params[:id]}"
  end

  private

  # strong params
  def boxingteams_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:boxingteam).permit(:name, :location)
  end

end