class Scene < ActiveRecord::Base

  has_many :characters, through: :dialogues

  has_many :dialogues


  #   def add_dialogue(content, parenthetical_id, character_name)
  #   #
  #   character = Character.find_by_name(character_name)

  #   # if ingredient is found...
  #   if ingredient
  #     # get this instance of recipe's own portions
  #     self.portions << Portion.create({
  #       quantity: quantity,
  #       unit: unit_name,
  #       ingredient: ingredient
  #       })
  #   else
  #     # shows this in server log
  #     puts "Failed to create recipe! No ingredient with name #{ingredient_name}"
  #     nil
  #   end
  # end

end
