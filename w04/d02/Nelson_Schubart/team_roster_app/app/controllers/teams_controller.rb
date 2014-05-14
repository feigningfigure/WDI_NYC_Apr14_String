class TeamsController < ApplicationController

  def index
    @Teams = Team.order(id: :desc)

    # new instance of team for the form helper
    @team = Team.new
    # render json: @team
  end

  def show
    # by default...
    # render :name_of_this_method

    # define @team
    @team = Team.find(params[:id])

    # makes the form work
    @player = Player.new

    # binding.pry
  end

  def create
    # add .create soon..

    # old way...
    # team_attributes = params[:cookbook]

    # new way... *but requires private_method
    Team.create(team_attributes)

    render json: {
      strong_params: team_attributes
    }


    # when done...
    redirect_to teams_path
  end

  def edit
    @team = Team.find(params[:id])
    # render json: @cookbook
    render partial: "teamform", locals: { team_local: @team }
  end

   def update

    team = Team.find(params[:id])

    team.update_attributes(team_attributes)

    # render json: cookbook
    redirect_to "/teams/#{params[:id]}"
  end

  private

  # strong params
  def team_attributes
    # NEED TO CHANGE TITLE/DESCRRIPTION TOOO
    params.require(:team.permit(:city, :mascot)
  end

end
