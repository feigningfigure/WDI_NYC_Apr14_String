class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths
  attr_reader :renters

  def initialize(price, is_occupied, sqft, num_beds, num_baths)
    @price = price.to_f
    @is_occupied = is_occupied
    @sqft = sqft.to_i
    @num_beds = num_beds.to_i
    @num_baths = num_baths.to_i
    @renters = []
  end

  def to_s
    "This apartment has #{@sqft} square feet is currently #{@is_occupied? 'occupied' : 'vacant'}. It has #{num_beds} bedbrooms and #{@num_baths} bathrooms."
  end
end





    # @price = # decimal
    # @is_occupied =  boolean
    # sqft = # integer
    # num_beds = # integer
    # num_baths = # integer
    # renters =  #array of person objects


  # def initialize
  #   puts "What is the monthly cost of your apartment?"
  #   @price = gets.chomp.to_f
  #   puts "Is the apartment occupied? (Y/N)"
  #   is_occupied = gets.chomp
  #     case is_occupied
  #       when "Y"
  #         @is_occupied = true
  #       when "N"
  #         @is_occupied = false
  #     end
  #   puts "How many square feet does it have?"
  #   @sqft = gets.chomp.to_i
  #   puts "How many bedrooms does it have?"
  #   @num_beds = gets.chomp.to_i
  #   puts "How many bathrooms does it have?"
  #   @num_baths = gets.chomp.to_i
  #   @renters = []
  # end
