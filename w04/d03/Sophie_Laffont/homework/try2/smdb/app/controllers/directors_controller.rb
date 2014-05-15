class DirectorsController < ActionController::Base

	def index
		@directors = Director.all
	end


	def new
		@director =Director.new
	end


	def create

	end


	def show

	end





end