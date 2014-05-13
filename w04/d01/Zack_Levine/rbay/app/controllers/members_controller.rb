class MembersController < ApplicationController

  def index
    @member = Member.order(screen_name: :member_profile)

    # new instance of cookbook for the form helper
    @member = Member.new
    # render json: @members
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
