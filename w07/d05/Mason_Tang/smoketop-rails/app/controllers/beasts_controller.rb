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
       if params["name"] == "Abraham Lincoln"
            render :json => {:message => "FAILURE"}
        else
            Beast.create({
                :name => params["name"],
                :diet => params["diet"],
                :light_ethology => params["light_ethology"],
                :size => params["size"]

            })

             render :json => {:message => "Success! Probably..."}
    end

    # new_beast = Beast.create({name: params["name"]})
    # respond_to do |format|
    #   format.json { render json: new_beast}
    # end


  end

  def destroy

  end

  def update

  end

end
