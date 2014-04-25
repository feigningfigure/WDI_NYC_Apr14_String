class Apartment

attr_accessor :price, :is_occupied, :size, :baths, :beds, :renters

  def initialize
    @price = 0
    @is_occupied = false
    @size = 0
    @baths = 0
    @beds = 0
    @renters = Array.new
  end


end
