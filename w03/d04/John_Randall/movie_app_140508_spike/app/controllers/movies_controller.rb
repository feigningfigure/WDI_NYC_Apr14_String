class Movies < ActionController::Base
  def index
      # render json: "hello I'm a movies app"
      # render index
      @posts = Post.first(5)
  end
end