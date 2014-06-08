SmoketopApp::Application.routes.draw do
  root "beasts#welcome"

  get "/beasts" => "beasts#index"

  get "/about" => "beasts#about"
end

# Prefix Verb URI Pattern       Controller#Action
#   root GET  /                 beasts#welcome
# beasts GET  /beasts(.:format) beasts#index
#  about GET  /about(.:format)  beasts#about

# The routing system does two things: It maps requests to controller action methods, and it enables the dynamic generation of URLs for you for use as arguments to methods like link_to and redirect_to.

# the 'home' button is mapped as root/localhost 3000 ... def welcome in the controller...link_to root_path in the app.html.erb
# the 'lists beasts' button is mapped to http://localhost:3000/beasts which maps to def index in the controller ...link_to 'beasts_path' in the app.html.erb
