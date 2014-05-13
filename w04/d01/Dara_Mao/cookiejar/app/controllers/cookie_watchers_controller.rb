class CookieWatchersController < ApplicationController
  def index
    @cookie_watchers = CookieWatcher.order("RANDOM()")
    # @cookie_watchers = CookieWatcher.all

    #Define thief and acuser
    @thief = @cookie_watchers.first
    @thief.increment("cookie")
    @thief.save

    @acuser = @cookie_watchers.last

    #To check if the database renders in the browswer
    # render json: @cookie_watchers
  end
end
