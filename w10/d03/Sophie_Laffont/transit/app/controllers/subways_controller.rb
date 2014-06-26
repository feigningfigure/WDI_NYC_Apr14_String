class SubwaysController < ApplicationController
  def index
   @subways = SubwayLine.all
  end

  def show
   @subway = SubwayLine.find(params[:id])
   # SubwayLine.where(:name => params[:name])
  end
end
