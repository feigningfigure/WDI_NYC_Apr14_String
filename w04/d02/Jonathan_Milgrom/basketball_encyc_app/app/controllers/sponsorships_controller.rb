class SponsorshipsController < ApplicationController

	def create
		Sponsorship.create(new_sponsorship_attributes)

		redirect_to "/teams/#{new_sponsorship_attributes[:team_id]}"
	end

private
	  # strong params
	def new_sponsorship_attributes
	    # whitelisting parts of the params hash, that are DB-safe
	   params.require(:sponsorship).permit(:team_id, :shoe_id)
	end

end