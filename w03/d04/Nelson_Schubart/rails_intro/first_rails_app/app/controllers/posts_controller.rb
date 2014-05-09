class PostsController < ActionController::Base

  def index
    # the return value of this methord doesn't matter (as much) in rails
    # must tell it to 'render' in this case
    render text: "Hello!"
  end

  def greeting
    @greeting = params[:greeting]
  end


end
