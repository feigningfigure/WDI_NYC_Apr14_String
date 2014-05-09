Rails.application.routes.draw do

  # for a given resource (i.e. "Post") ...

  # GET /posts - show all my posts
  get "/posts" => "posts#index"

  # GET /posts/:id - show a single post

  # GET /posts/:id/edit - show an edit form for a post

  # UPDATE /posts/:id - process changes to a post

  # GET /posts/new - show a form for a new post
  get "/posts/new" => "posts#new"

  # POST /posts - process form data

  # DELETE /posts/:id - delete a post

  get '/posts/cats' = 'posts#cats'



end
