class PostsController <ActionController::Base

	def index
		#the return value of this method doesn't matter as much as it would in sinatra
		render text: "hello!"
	end

	def greeting
		@greeting = params[:greeting]
	end
	
end
