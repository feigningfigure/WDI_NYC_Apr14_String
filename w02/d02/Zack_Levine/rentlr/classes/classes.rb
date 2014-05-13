#ruby
require 'rainbow'

class Building
  attr_accessor :address
  attr_accessor :style
  attr_accessor :has_doorman
  attr_accessor :is_walkup
  attr_accessor :num_floors
  attr_accessor :apartments

  def initialize(address, style, has_doorman)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = apartments
    puts " a new address has been instantiated. #{@address}, #{@style} and.. #{@has_doorman}"
  end
end

building1 = Building.new("324 Main St","pre-war", "no-lamers")

class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters
  def initialize(price,is_occupied,sqft)
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = renters

    #debug message
    puts "we have info on the Apartement at #{@price}"
  end
end

rad_ass_apt_3a = Apartment.new("$6000","true-dat","385353sqft")

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name,age,gender,apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

end

class Building
  def show_building
    puts "--------".color('ff00ff')
    puts "|[]  []|".color('ff0000')
    puts "|[]  []|".color('00ff00')
    puts "|[]  []|".color('ff00ff')
    puts "|  {}  |".color('f0f0f0')
    puts "| _-_  |".color('ffff00')
  end
end

Building.new.show_building

