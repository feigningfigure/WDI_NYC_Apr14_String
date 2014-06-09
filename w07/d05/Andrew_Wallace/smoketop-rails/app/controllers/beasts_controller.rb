class BeastsController < ApplicationController

def welcome
    render inline: "<p>Welcome!</p>", layout: true
end

  def index
    respond_to do |format|

      if params[:diet]
        @diet = params[:diet]
      else
        @diet = "any"
      end

      if @diet != "any"
        format.html { @beasts = Beast.where("diet = ?", params[:diet]) }
        format.json { render json: Beast.where("diet = ?", params[:diet]) }
      else
        format.html { @beasts = Beast.all }
        format.json { render json: Beast.all }
      end

    end
  end

  def create

  end

  def destroy

  end

  def update

  end

end



# class BeastsController < ApplicationController

#   def welcome
#     render inline: "<p>Welcome!</p>", layout: true
#   end

#   def index
#     if params[:diet]
#       @diet = params[:diet]
#     else
#       @diet = "any"
#     end

#     if @diet != "any"
#       @beasts = Beast.where("diet = ?", params[:diet])
#     else
#       @beasts = Beast.all
#     end
#   end

#   def create

#   end

#   def destroy

#   end

#   def update

#   end

# end
