class PostsController < ApplicationController
  respond_to :json

    def index
      post = Post.all
      respond_with post
    end

    def create
      post = Post.create(post_params)
      respond_with post
    end

    def destroy
      #post = Post.destroy(params[:id])
      post = Post.find(params[:id])
      post.destroy
      respond_with post
    end

    def update
      post = Post.find(params[:id])
      post.update(post_params)
      respond_with post
    end

    private
    def post_params
       params.require(:post).permit(:name, :date)
    end
end
