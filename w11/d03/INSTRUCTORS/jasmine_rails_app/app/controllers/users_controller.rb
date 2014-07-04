class UsersController < ApplicationController

  def welcome
    render :inline => "Yo", :layout => true
  end

end
