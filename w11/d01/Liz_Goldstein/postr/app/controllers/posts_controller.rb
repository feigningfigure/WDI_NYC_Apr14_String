class PostsController < ApplicationController

   respond_to :json

   def index
      posts = Post.all
      respond_with posts
   end

   def create
    post = Post.create(post_params)
    respond_with post
  end

private

  def post_params
    params.require(:post).permit(:title)
  end

end
