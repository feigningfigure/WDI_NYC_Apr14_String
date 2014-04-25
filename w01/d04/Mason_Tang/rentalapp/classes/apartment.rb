class Apartment

    attr_accessor :apt, :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

    def initialize (apt, price, is_occupied, sqft, num_beds, num_baths, renters)
      @apt = []
      @price = price
      @is_occupied = is_occupied
      @sqft = sqft
      @num_beds = num_beds
      @num_baths = num_baths
      @renters = persons.new
    end
end
