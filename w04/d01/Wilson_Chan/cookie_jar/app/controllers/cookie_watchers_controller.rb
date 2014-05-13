class CookieWatchersController < ApplicationController

  def index
    @cookie_watchers = CookieWatcher.order("RANDOM()")

    # render json: @cookie_watchers

    # @cookie_watchers = CookieWatcher.all (another option)

    @thief = @cookies_watchers.first
    @thief.increment("cookies")
    @thief.save

    @accuser = @cookies_watcher.last

  end

end
