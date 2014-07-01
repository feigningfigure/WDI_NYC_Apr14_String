class SessionsController < ApplicationController
       def create
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for logging in, #{@user.name}."
    else
      flash[:error] = "Invalid email or password."
    end

    redirect_to :root
  end

  def destroy
    session[:user_id] = nil

    flash[:notice] = "You have been logged out."

    redirect_to :root
  end
end
