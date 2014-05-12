class CookieWatcher < ActiveRecord::Base
  def index

    @watchers = CookieWatcher.all
  end
end
