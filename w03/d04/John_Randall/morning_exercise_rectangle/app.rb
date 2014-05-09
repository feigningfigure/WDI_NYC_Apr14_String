# ## Rectangles (and Kittens)


# ### You will...

# #### Rectangles!

# - Write a Sinatra application

# - Should have a response for a `get` request to '/'
# - The page should display 1 centered, blue rectangle (any size).

# - Should have a response for a `get` request to '/:num'
# - The page should display `:num` centered, blue rectangles (any size).


# ### Bonus

# #### Kittens!

# - Create a Sinatra application

# - Should have a `get` request to '/kittens/:num' 
# - The page should display `:num` centered kitten images.
# - The images should all be of a different size.

# ##### Hint
# - Check out:  http://PlaceKitten.com/


require 'sinatra'
require 'sinatra/reloader'



get "/" do
  @number = 1
  erb :rectangle_page
  
end


get "/:number" do
  @number = params[:number]
  erb :rectangle_page
end