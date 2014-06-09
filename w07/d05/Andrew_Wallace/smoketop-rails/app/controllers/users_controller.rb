class UsersController < ApplicationController

  def welcome
    render inline: "<p>Welcome!</p>", layout: true
  end

  def index
    @all_users = User.all
  end

  def create
    @user = User.new
  end

  def destroy

  end

  def update

  end

end
