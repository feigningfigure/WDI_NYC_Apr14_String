class UsersController < ApplicationController
end

def index
    if current_user
      @user = current_user
    else
      @user = User.new
    end
  end

  def create
    @user = User.create(user_params)
    if @user
      flash[:notice] = "Thank you for registering, #{@user.name}."
    else
      flash[:error] = "There was an issue with your registration."
    end

    redirect_to :root
  end

  def show
    render :json => User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end


