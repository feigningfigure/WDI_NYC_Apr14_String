class SponsorshipsController < ApplicationController

	def create
		Team.create(new_team_attributes)

		redirect_to teams_path
	end

private
	  # strong params
	def new_sponsor_attributes
	    # whitelisting parts of the params hash, that are DB-safe
	   params.require(:sponsorship).permit(:name, :city, :url)
	end

end