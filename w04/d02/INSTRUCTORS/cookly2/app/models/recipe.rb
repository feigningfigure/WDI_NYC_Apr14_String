class Recipe < ActiveRecord::Base
  belongs_to :cookbook

  # this allows me to say recipe.ingredients
  # connect it to ingredients THROUGH some join table named "portions"
  has_many :ingredients, through: :portions

  # this allows me to say recipe.portions
  has_many :portions

end
