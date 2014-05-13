class CookieWatchersController < ApplicationController


	def index

		i = 0
		CookieWatcher.all.each do |watcher|
			i += 1
		end
		length = i
		@accuser = CookieWatcher.find(rand(1..length))
		@thief = CookieWatcher.find(rand(1..length))

		@thief.cookies += 1
		@thief.save

	end


end