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
end
