require 'rainbow'

class Building

  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman? = has_doorman
    @is_walkup? = is_walkup
    @num_floors = num_floors
    @apartments = {}
  end

  def to_s
    "The building #{@address} is a #{@style} and #{has_doorman} in a #{@is_walkup} with #{@num_floors} and #{@apartments}."
  end
end

class Apartment

  def initialize
    @price = price
    @is_occupied?= is_occupied
    @sqft = sqft.to_i
    @num_beds = num_beds.to_i
    @num_baths = num_baths.to_i
    @renters = {}
  end

  def to_s
    "The #{@price} for each #{@sqft} with #{@num_beds} and
    #{num_baths} for #{@renters} is currently #{@occupied}."
  end
end

class Person

  def initialize
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def to_s
    "Please leave your #{@name}, #{@age}, #{@gender} if you would like to lease #{@apartment}"
  end
end
