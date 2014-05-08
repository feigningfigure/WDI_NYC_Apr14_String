class PostsController < ActionController::Base

  def index
    # the return value of this method doesn't matter (as much)
    # render json: { greeting: "Hello!" }
  end

  def greeting
    @greeting = params[:greeting]
  end

end
