class Apartment

  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

def initialize(attributes={})
  puts "Please tell me the price of the apartment."
  @price = gets.chomp.to_s
  puts "Is the apartment occupied? Please answer with true or false."
  @is_occupied = gets.chomp.to_s
  puts "How many square feet does the apartment have?"
  @sqft = gets.chomp.to_s
  puts "How many beds does the apartment have?"
  @num_beds = gets.chomp.to_s
  puts "How many baths?"
  @num_baths = gets.chomp.to_s
  puts "Who are the renters?"
  @renters = gets.chomp.to_s
end

# def create_new_apartment(price, is_occupied, sqft, num_beds, num_baths, renters)

end

apartment = Apartment.new

puts apartment.price
puts apartment.is_occupied
puts apartment.sqft
puts apartment.num_beds
puts apartment.num_baths
puts apartment.renters


# class Apartment


#   attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

# def initialize(initial_name=nil)
#   puts "I was created"

#   # @name = initial_name
#   # @age = []
#   # @gender= ""
#   # @floors = 25
#   # @apartment= []

# end
# end



#   def initialize()

#   end
#   price: 10000.00
#   is_occupied: true
#   sqft: 30000
#   num_beds: 8
#   num_baths: 4
#   renters: ["jo smyth", "liz o'connor", "derek jackson"]

# end
