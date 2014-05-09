class PostsController < ActionController::Base

 def index() 
    render text: "hello"
    # render json: {greeting: "hello!"}
 end


end