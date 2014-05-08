# ### Lunch Bot


# - Create a folder in your personal folder called `lunch_bot`

# - Write a Sinatra Application using ActiveRecord within that folder

# - Create a new database called `wdi_lunch`
# - Create a new table called `lunches`
# - Columns should include:
# - lunch_name as string
# - rating as smallint
# - Populate your table with three lunch spots

# - Write a `get` request to '/' that should:
# - display the your lunch spots and their ratings


# #### Bonus

# - display a link to `/add`
# - create a form to add lunch spots
# - write a `post` request to '/' should enter the form data into the database
# Hide full text




#SETUP
# require 'Bundler'
# Bundler.require

require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
# require 'pg'



# establishes connection once and for all...
ActiveRecord::Base.establish_connection({
  database: "w03_d03_wdi_lunch",
  adapter: "postgresql"
})

# MODELS
require_relative 'models/lunch'


get '/'  do
  #list all
  @lunches = Lunch.all
  erb :index
end

