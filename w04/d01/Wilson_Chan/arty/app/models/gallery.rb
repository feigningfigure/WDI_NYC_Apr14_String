class Gallery < ActiveRecord::Base
  # gives all gallery instances a .gallery method
  has_many :artists
  # note: you must also have a 'recipes' table
  # and it must have a column called 'cookbook_id'

  # # hand-rolled version of 'has_many :recipes'
  # def recipes
  #   # make some SQL query
  #   Recipe.where("cookbook_id=#{self.id}")
  # end

end
