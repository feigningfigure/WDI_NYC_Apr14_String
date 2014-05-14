class CookiesController < ApplicationController

	def index
		@cookie_watcher = CokieWatcher.order("RANDOM()")
	end

	def accuser_name
		
		@accuser_name = CookieWatcher.all.sample
	end

	def thief_name

		@thief_name = CookieWatcher.all.sample
		


	end




end

