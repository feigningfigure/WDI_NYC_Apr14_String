class BeastsController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index
# binding.pry
  @user = User.new
  respond_to do |format|


    format.html {@beasts = Beast.all}
    format.json {render json: @beasts = Beast.where("diet = ?", params["params"]["diet"]) }

  end

        # format.html { @beasts = Beast.where("diet = ?", params["params"]["diet"]) }
      #   format.json { render json: Beast.where("diet = ?", params["params"]["diet"]) }
      # else
      #   binding.pry
      #   format.html { @beasts = Beast.all }
      #   format.json { render json: Beast.all }
      # end




      #   binding.pry
      #   format.html { @beasts = Beast.where("diet = ?", params[:diet]) }
      #   format.json { render json: Beast.where("diet = ?", params[:diet]) }
      # else
      #   binding.pry
      #   format.html { @beasts = Beast.all }
      #   format.json { render json: Beast.all }
      # end

# case @diet
# when @diet == "herbivore"
#   @beasts = Beast.where("diet = ?", "herbivore")
# when @diet == "carnivore"
#   @beasts = Beast.where("diet = ?", "carnivore")
# when @diet == "omnivore"
#   @beasts = Beast.where("diet = ?", "omnivore")
# else
#   @beasts = Beast.all
# end

    # if params[:diet]
    #   @diet = params[:diet]
    # else
    #   @diet = "any"
    # end

    # if @diet != "any"
    #   @beasts = Beast.where("diet = ?", params[:diet])
    # else
    #   @beasts = Beast.all
    # end

 # @diet = params["params"]["diet"].to_json

 #    if  params["params"]["diet"]
 #      @diet = params["params"]["diet"]
 #    else
 #      @diet = "any"
 #    end

 #    if @diet != "any"
 #      @beasts = Beast.where("diet = ?", @diet = params["params"]["diet"])
 #    else
 #      @beasts = Beast.all
 #    end

  end

  def create

  end

  def destroy

  end

  def update

  end

end
