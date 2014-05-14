class PlayersController < ApplicationController

  def create

    Player.create(player_attributes)

    # render json: Player.create(recipe_attributes)
    redirect_to "/teams/#{player_attributes[:team_id]}"
  end

  def edit
    @player = Player.find(params[:id])
    render partial: "playerform", locals: { player_local: @player, team_id: @player.team.id }
  end

  def update
    player = Player.find(params[:id])

    player.update_attributes(player_attributes)

    redirect_to "/teams/#{player.team.id}"
    # render json: params
  end

  private
  #CHECK THIS OUT
  def player_attributes
    params.require(:player).permit(:title, :content, :team_id)
  end

end
