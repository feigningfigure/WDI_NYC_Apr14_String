class PostsController < ActionController::Base

  def index
    # the return value of this method doesn't matter (as much)
    # render interprets the type of output and the output itself.
    # render json: { greeting: "Hello!" } # outputs in json style
    # render text: "HELLO!"
  end

  def greeting
    @greeting = params[:greeting]
  end


end
