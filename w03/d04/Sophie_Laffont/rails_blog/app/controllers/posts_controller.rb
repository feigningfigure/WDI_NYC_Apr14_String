class PostsController < ActionController::Base

  # sets the default layout
  layout "application"

  def index
    # this makes @posts available to
    # app/views/posts/index.html.erb
    @posts = Post.first(5)
  end

  def new

  end

  def cats
    @photos = []
    10.times do
      @photos << random_person_photo
    end
    # voila: same gems that work in sinatra, work in rails
  end

end
