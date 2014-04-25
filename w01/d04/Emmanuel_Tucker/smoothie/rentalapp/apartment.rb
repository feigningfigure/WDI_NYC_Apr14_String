class Apartment

attr_accessor :price, :is_occupied :sqft, :num_beds, :num_baths, :renters
  # sets the starting state of the object
  def initialize(price, is_occupied, sqft, num_beds,num_beds, num_baths, renters)
    @price = ["price"]
    @is_occupied = ["is_occupied"]
    @sqft = ["sqft"]
    @num_beds = ["num_beds"]
    @num_baths = ["num_baths"]
    @renters = ["renters"]

  end
end
