class CookieWatchersController < ApplicationController

	def index
		# @cookie_watchers = CookieWatcher.all
		# .order is being inherited from ActiveRecord::Base
		@cookie_watchers = CookieWatcher.order("RANDOM()")
		# render json: @cookie_watchers
		
		@thief = @cookie_watchers.first
		@thief.increment("cookies")
		@thief.save

		@accuser = @cookie_watchers.last


	end

end