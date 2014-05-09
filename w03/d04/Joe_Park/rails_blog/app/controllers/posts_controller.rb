class PostsController < ActionController::Base

  # sets the default layout
  layout "application"

  def index
  	@posts = Post.all
  end

  def new

  end

end
