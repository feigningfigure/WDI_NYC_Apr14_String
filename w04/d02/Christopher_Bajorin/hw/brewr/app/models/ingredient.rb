class Ingredient < ActiveRecord::Base

#ingredient.beers
has_many :beers, through: :quantities

has_many :quantities
end
