class PostsController < ActionController::Base


  def index
    #the return value of this method doesnt matter (as much)
    # render text: "Hello!"
    # render json: { greeting: "Hello!" }
  end

  def greeting
    @greeting = params[:greeting]
  end

end
