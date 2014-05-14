class CookiesController < ActionController::Base

	layout 'application'

	def index
		@cookie_watcher = CookieWatcher.order("RANDOM()")

		# render json: @cookie_watcher

		@accuser = @cookie_watcher.first
		@theif = @cookie_watcher.last

		if  @theif.cookies == nil
			theifs_cookies = 0
		else
			theifs_cookies = @theif.cookies.to_i
		end
		
		@theif.cookies = theifs_cookies + 1
		@theif.save
	end


end
