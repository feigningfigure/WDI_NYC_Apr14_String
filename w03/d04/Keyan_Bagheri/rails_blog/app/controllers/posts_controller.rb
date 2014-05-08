class PostsController < ActionController::Base

  # sets the default layout
  layout "application"

  def index
  	#makes @posts available to app views posts index.html.erb
  	@posts = Post.all
  end

  def new

  end

end
