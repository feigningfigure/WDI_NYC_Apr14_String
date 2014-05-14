class Producer < ActiveRecord::Base
 # gives all producer instances a .recipes method
has_many :beats
  # note: you must also have a 'beats' table
  # and it must have a column called 'producer_id'

  # # hand-rolled version of 'has_many :beats'
  # def beats
  #   # make some SQL query
  #   beat.where("producer_id=#{self.id}")
  # end
end
