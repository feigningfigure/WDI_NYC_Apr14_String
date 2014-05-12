class CookieWatchersController < ApplicationController


  def index
    @people = CookieWatcher.all
    @accuser = @people.sample.name
    @thief = @people.sample.name
  end

end
