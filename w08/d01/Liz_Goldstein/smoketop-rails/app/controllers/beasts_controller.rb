class BeastsController < ApplicationController

  protect_from_forgery except: :create

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

    respond_to do |format|
      format.html { render :index }
      format.json { render :json => @beasts }
    end
  end

  def show
    render :json => Beast.find(params[:id])
  end


  def create
    newbeast = Beast.new({
      :name => params["name"],
      :diet => params["diet"],
      :habitat => params["habitat"],
      :light_ethology => params["light_ethology"],
      :size => params["size"],
      :image_filename => params["image_filename"],
      :description => params["description"]})
  newbeast.save!

      # render :json => {:message => "Success! Probably..."}
# binding.pry
      redirect_to root_url
  end


  def destroy

  end

  def update

  end

private

  def beast_params
    params.require(:beast).permit(:name, :diet, :habitat, :light_ethology, :size, :image_filename, :description)
  end


end
