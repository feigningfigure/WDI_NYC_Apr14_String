class Soldier
  attr_accessor :first_name, :last_name
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

soldiers = []
soldiers << Soldier.new("Alvin", "York")
soldiers << Soldier.new("Nina", "Price")
soldiers << Soldier.new("Percy", "Pinkerton")
soldiers << soldier.new("Abigail", "Brand")

# print each last_name on soldiers' array
soldiers.each { |s| puts s.last_name }

# print each array value with last_name "Price"
s_last_name = soldiers.select { |s| s.last_name == "Price"}

s_last_name = soldiers.map { |s| s.last_name}

    # Morning Exercise

# Memorial Day Arrays!

# Specs...

# *** Create a Soldier class that has first name and last name.

# *** Create an array of soldier objects for:

# - Alvin York
# - Nina Price
# - Percy Pinkerton
# - Abigail Brand
# (You will test these in Pry:)

# *** Write a method that prints each soldier's last name

# *** Write a method that returns an array of the soldier object with the last name "Price"

# *** Write a method that creates a new array of all the soldiers' last names

# Bonus:

# *** Write a method that returns a string of the longest last name
