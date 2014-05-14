class CookiesController < ApplicationController

  layout "application"

  def index
      @cookie_watchers = CookieWatcher.order("RANDOM()")
    # @cookie_watchers = CookieWatcher.all

    render json: @cookie_watchers
  end

end
