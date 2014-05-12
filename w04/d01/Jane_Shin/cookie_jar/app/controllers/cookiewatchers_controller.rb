class CookieWatcherController < ApplicationController

  def index
  	@accuser = spring_wdi.sample
  	@theif = spring_wdi.sample

  end


end