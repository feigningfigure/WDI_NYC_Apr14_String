class CookieWatchersController < ApplicationController

  def index

    @cookie_watchers = CookieWatcher.order("RANDOM()")
    # @cookie_watchers = CookieWatcher.all

    # render json: @cookie_watchers

    @thief = @cookie_watchers.first
    @thief.increment("cookies")
    @thief.save

    # @thief.cookies = @thief.cookies + 1
    # @thief.save!

    @accuser = @cookie_watchers.last

  end

end
