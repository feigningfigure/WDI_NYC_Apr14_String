class CookieWatchersController < ApplicationController
  def index
    @cookie_watcher = CookieWatcher.order("RANDOM()")
    people = CookieWatcher.count
    @accuser = @cookie_watcher.first
    @thief = @cookie_watcher.last
    # @thief.update(cookies: (@thief.cookies + 1))
    @thief.increment("cookies")

  end

end
