class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  #single member view interlude...
  def info
    # define @cookbook
    @members = Member.find(params[:id])

    # makes the form work
    # @members = Member.new
  end

  def create
    Member.create(params[:member_id],params[:member_profile])

     redirect_to "/members/#{member_bucket_info[:member_id]}"
  end

end

