class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index
    if params[:diet]
      @diet = params[:diet]
    else
      @diet = "any"
    end

    if @diet != "any"
      @beasts = Beast.where("diet = ?", params[:diet])
    else
      @beasts = Beast.all
    end
  end

  def create
    # instantiate a new beast using form params
    @beast = Beast.new(beast_params)
    # save the beast
    if @beast.save
      # if save is succesful redirect to the index action
      redirect_to(:action => 'index')
    else
      # if save fails, have the user try again
      render('_diet_form.html.erb')
    end
  end

  def destroy
    @beast = Beast.find(params[:id])
    @beast.destroy
    redirect_to(:action => 'index')

  end

  def update
    @beast = Beast.find(params[:id])
    if @beast = Beast.update_attributes(beast_params)
      redirect_to(:action => 'index')
    else
      # if save fails, have the user try again
      render('_diet_form.html.erb')
    end

  end

  private

  def beast_params
    params.require(:beast).permit(name:, diet:, light_ethology:, habitat:, size:, image_filename:,
  description:)
  end

end
