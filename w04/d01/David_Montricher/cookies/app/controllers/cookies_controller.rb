class CookiesController < ActiveController

  def index

    cookie_watchers = CookieWatcher.order("RANDOM()")

    cookie_watchers = CookieWatcher.all

    name_thief = cookie_watchers.first
    name_thief.increment("cookies")
    thief.save

    @accuser = @cookie_watchers.last

    puts "#{@name_accuser}: Who stole the cookie from the cookie jar? #{@name_thief} stole the cookie from the cookie jar!"
    puts "#{name_thief}: Who, me?"
    puts "#{name_accuser}: Yes, you!"
    puts "#{name_thief}: Not me, couldn't be, wasn't me."
    puts "#{name_accuser}: If not you, then who?"



  end
