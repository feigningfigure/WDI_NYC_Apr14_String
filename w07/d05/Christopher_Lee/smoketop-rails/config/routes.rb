SmoketopApp::Application.routes.draw do
  # root "beasts#welcome"
  root "beasts#index"

  # get "/beasts" => "beasts#index"

  # get "/about" => "beasts#about"
end

# Prefix Verb URI Pattern       Controller#Action
#   root GET  /                 beasts#welcome
# beasts GET  /beasts(.:format) beasts#index
#  about GET  /about(.:format)  beasts#about
# christopherlee ~/code/wdi/WDI_NYC_Apr14_Str
