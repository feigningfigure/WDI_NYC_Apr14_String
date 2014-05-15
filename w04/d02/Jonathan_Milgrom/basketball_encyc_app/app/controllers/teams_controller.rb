class TeamsController < ApplicationController

	def index
		@teams = Team.all
		@team = Team.new	
	end

	def show
		id = params[:id]
		@team = Team.find(id)
		@player = Player.new
		@sponsorship = Sponsorship.new
	end

	def create

		Team.create(new_team_attributes)

		redirect_to teams_path
	
	end


	def edit
		id = params[:id]
		@team = Team.find(id)
	end

	def update

    team = Team.find(params[:id])

    team.update_attributes(new_team_attributes)

 
    redirect_to "/teams/#{params[:id]}"
  	
  	end

 private
	  # strong params
	def new_team_attributes
	    # whitelisting parts of the params hash, that are DB-safe
	   params.require(:team).permit(:name, :city, :url)
	end
end