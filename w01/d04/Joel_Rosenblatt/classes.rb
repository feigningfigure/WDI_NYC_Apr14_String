class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
  def initialize(address=nil, style=nil, has_doorman=false, is_walkup=false, num_floors=1, apartments=[])
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = apartments
  end

    class Apartment
      attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters
      def initialize(price=1, is_occupied=false, sqft=1, num_beds=1, num_baths=1, renters=[])
        @price = price
        @is_occupied = is_occupied
        @sqft= sqft
        @num_beds = num_beds
        @num_baths = num_baths
        @renters = renters
      end


      class Person
        attr_accessor :name, :age, :gender, :apartment
        def initialize(name=nil, age=1, gender=nil, apartment=Apartment.class)
          @name = name
          @age = age
          @gender = gender
          @apartment = apartment
        end
      end

  end

end
