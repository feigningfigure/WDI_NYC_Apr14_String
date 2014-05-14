class MembersController < ApplicationController

  def index
    @members = Member.all

  end
  def show
    # by default...
    # render :name_of_this_method

    # define @cookbook
    @member = Member.find(params[:screen_name])

    # makes the form work
    @member = Member.new

    # binding.pry
  end
end
