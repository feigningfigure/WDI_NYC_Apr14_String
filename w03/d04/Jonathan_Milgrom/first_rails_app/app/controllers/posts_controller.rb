class PostsController < ActionController::Base

	def index
		# render text: "hello"
		# render json: {greeting: "Hello"}
	end

	def greeting
		@greeting = params[:greeting]	
	end
end