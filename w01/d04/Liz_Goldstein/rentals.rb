
#Wrote functions to:
#Check if a person lives in an apartment
#Check if an apartment is available
#Change rental status of an apartment
#Update other listing fields/ add input when creating a new listing... needs work on the input but a cool start!
#Model a building update listing on the apartment one
#Confused on how to use the arrays to keep track of classes, and how to put it all together in general
#also need to know how to display variables for a class instance... do you need to write a checker every time??

class Building
  def initialize(address, appartments, style=nil, has_doorman=nil, is_walkup=nil, num_floors=nil)
    puts "A new building"
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end
end

#apartment class begins
class Apartment

  attr_accessor :is_occupied, :num_beds, :num_baths, :price

  def initialize(is_occupied=false, num_beds=0, num_baths=0, renters=0, price=0)
    puts "An apartment"
    @is_occupied = is_occupied
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
    @price = price
  end

  def check_avail?
    if @is_occupied == true
      puts "It's rented!"
    else
      puts "It's available!"
    end
  end

  def rental_status_change          #how can i make this a when case? couldnt do it
   if @is_occupied == true
      @is_occupied == false
      puts "It's now unavailable"
    else
      @is_occupied == true
      puts "It's now available"
    end
  end

  def update_listing
    puts "Current info:"
    puts "Bathrooms: #{@num_baths}"
    puts "Bedrooms: #{@num_beds}"
    puts "Price: #{@price}"
    puts "Currently occupied: #{is_occupied}"
    puts "What do you need to change?"
    puts "Choose: Bathrooms, Bedrooms, Price"
    input = gets.chomp.downcase
    case input
    when input = "bathrooms"
      puts "How many bathrooms in the Unit?"
      num = gets.chomp
      @num_baths = num
    when input = "bedrooms"
      puts "How many bedrooms in the unit?"
      num = gets.chomp
      @num_beds = num
    when input = "price"
      puts "What does it rent for?"
      num = gets.chomp
      @price = num
    else
      "Quit update"
    end
    puts "Current info:"
    puts "Bathrooms: #{@num_baths}"
    puts "Bedrooms: #{@num_beds}"
    puts "Price: #{@price}"
    puts "Currently occupied: #{is_occupied}"
  end

end
# apartment class ends

class Person
  attr_accessor :appartment
  def initialize(name, age, gender, apartment=nil)
    puts "A person, #{name}, appears"
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def assign_apartment(unit_num)
     @apartment = unit_num
  end

  def check_resident
    puts @apartment
    if @apartment == nil; puts "#{@name} is homeless"
    else puts "#{@name} lives in #{@apartment}"
    end
  end

end

# lizzy = Person.new("Lizzy", 33, "F")
# lizzy.assign_apartment(3)
# lizzy.check_resident
# lizzy.instance_variables.each do |var|
#    p var.instance_variable_get var
# end

# building1 = Building.new("205 W 89th St", 10)

unit_1 = Apartment.new(true)
unit_1.check_avail?
unit_1.rental_status_change
unit_1.update_listing

