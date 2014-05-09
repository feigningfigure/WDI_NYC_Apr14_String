class PostsController < ActionController::Base

  # sets the default layout
  layout "application"

  def index
    # this makes @ posts available to view --> index.html.erb
    @posts = Post.all
  end

  def new

  end

end
