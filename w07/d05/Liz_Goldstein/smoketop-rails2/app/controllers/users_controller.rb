class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

private

  def load_user
    return @user = User.find(params[:id])
  end


  def authorize
    unless current_user == @user
      redirect_to login_path
    end
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def user_attributes
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :id)
  end

end

end
