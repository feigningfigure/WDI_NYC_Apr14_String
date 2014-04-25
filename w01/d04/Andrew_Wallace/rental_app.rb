class Building
 attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
 def initialize(address, style, has_doorman, is_walkup, num_floors)
     @address = address
     @style = style
     @has_doorman = has_doorman
     @is_walkup = is_walkup
     @num_floors = num_floors
     @apartments = []

     def to_s
          puts "The building is located at #{address} and is a #{style} style building.  It has #{num_floors} floors, does #{has_doorman} doorman, is #{is_walkup} walkup and has #{apartments}.length apartments."
     end
 end
end

class Apartment
     attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters
     def initialize(price, is_occupied, sqft, num_beds, num_baths)
          @price = price
          @is_occupied = is_occupied
          @sqft = sqft
          @num_beds = num_beds
          @num_baths = num_baths
          @renters = []

     def to_s
          puts "The apartment costs #{price} dollars per month, and measures #{sqft} square feet with #{num_beds} beds and #{num_baths} bath and is #{is_occupied} occupied."
     end
     end
end

class Person
     attr_accessor :name, :age, :gender, :apartment
     def initialize(name, age, gender)
     @name = name.to_s
     @age = age
     @gender = gender.to_s
     @apartment = nil

     def to_s
          puts "This person's name is #{name} and is #{age} years old. He is a #{gender}."
     end
     end
end

Building.new("915 Union St.", "Colonial", false, true, 15).to_s
Apartment.new(400, false, 50, 2, 1).to_s
Person.new("Andrew", 31, "male").to_s
