Rails.application.routes.draw do
    # for a given resource (i.e. "Post") ...

  get "/" => "movies#index"

  # GET /posts - show all my posts
  get "/movies" => "movies#index"

  get "/movies/all" => "movies#all"

  # GET /posts/:id - show a single post

  # GET /posts/:id/edit - show an edit form for a post

  # UPDATE /posts/:id - process changes to a post

  # GET /posts/new - show a form for a new post
  get "/movies/new" => "movies#new"

  # POST /posts - process form data

  post "/movies/result" => "movies#result"
  # DELETE /posts/:id - delete a post

  post "/movies/all" => "movies#all"
  #shows a page after save that shows all

end
