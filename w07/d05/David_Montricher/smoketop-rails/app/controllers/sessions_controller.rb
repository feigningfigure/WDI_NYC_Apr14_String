class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params.fetch(:email))
    success = user.authenticate(params[:password])
    if success
      session[:user_id] = user.id
      flash[:notice] = "You are now logged in, <%= {#user.name}"

      redirect_to root_url, :notice => "You are now logged in"
    else
      flash[:error] = "Error: Invalid email or password"
      render "new"
    end
  end

  # method to log out current user
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "You have been logged out"
  end
end
