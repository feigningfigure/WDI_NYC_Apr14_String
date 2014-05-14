class Beer < ActiveRecord::Base
  belongs_to :brewery

  has_many :ingredients, through: :quantities

  has_many :quantities

  def add_quantity(amount, ingredient_name)
    ingredient = Ingredient.find_by_name(ingredient_name)
    if ingredient
      self.quantities << Quantity.create({
        amount: amount,
        ingredient: ingredient
        })
    else
      # ??
      nil
    end
  end


end
