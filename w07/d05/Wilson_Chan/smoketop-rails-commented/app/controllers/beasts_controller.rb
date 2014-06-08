# controllers sets everything up, gathers data and then passes it to the template views

class BeastsController < ApplicationController
    # in the routes.rb file root "beast#welcome"
  def welcome
    # our route file has specified that this action is also the root.
    # when the 'home' button is clicked the <p> tag is rendered
    render inline: "<p>Welcome!</p>", layout: true
  end
    # in the routes.rb file get "/beasts" => "beasts#index"
  def index
    # to gain access to our url parameters (the k,v info in a url after the id number) rails uses a special method called PARAMS. params returns a hash that contains all the GET & POST variables that were sent in a request. All parameters are put there including controller and action. It allows to gain access to the hash keys.
    # :diet is a symbol referencing the diet row inside our beast model
    # :diet is an attribute from the db table beasts
    # if http://localhost:3000/beasts?diet=herbivore&commit=Filter
    # if http://localhost:3000/beasts?diet=carnivore&commit=Filter
    # if http://localhost:3000/beasts?diet=omnivore&commit=Filter
    if params[:diet]
    # @diet instance variable which makes it available sitewide... pass all of the url params data into @diet
    # if whatever the user radio button is clicked thta shows up in params url form the :diet column make it equal to @diet
      @diet = params[:diet]

    else
      # if the user clicks on the 'any' radio button...http://localhost:3000/beasts?diet=any&commit=Filter appears in the url...pass all of the url params data into @diet variable
      @diet = "any"
    end

#if @diet != 'not equal' to the string 'any'
    if @diet != "any"
      # .where returns an ActiveRecord::Relation (not an array, even though it behaves much like one), which is a collection of model objects. If nothing matches the conditions, it simply returns an empty relation.
      @beasts = Beast.where("diet = ?", params[:diet])
    else
      # .all method is CRUD (for READ all in db)
      #render all beast from model db
      @beasts = Beast.all
    end
  end

  def create

  end

  def destroy

  end

  def update

  end

end

# remember, in order to pass data from the controller to the view, we need to use @instance_variables. This controller is just a regular ruby class. The @variable applies inside this instance of this beast object. Rails creates an instance of this beast class and then we can assign instance variables inside of it.
# Before rails renders the template, it gathers all of the controller's instance variables and makes those available to the templates. The way we gather up data from our controller to our view, is done exclusively through these instance variables.
# If you set up an instance variable in a controller, inside an action, it becomes available in the view that finally gets rendered in the end.
# This is referred to in rails as ActionPack. (ActionController goes to ActionView).
