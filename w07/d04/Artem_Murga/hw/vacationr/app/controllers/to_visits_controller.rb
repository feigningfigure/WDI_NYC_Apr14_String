class ToVisitsController < ApplicationController
  def index
  	@countries = ToVisit.all 
  end

  def new
  end

end
