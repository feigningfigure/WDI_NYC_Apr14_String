class Student

  # sets the starting state of the object
  def initialize
    @bag = ["bread"]
  end

  # this is a method
  def find(ingredient)
    # go through process of locating ingredient
    puts "Running around"
    add_to_bag(ingredient)
    return "#{ingredient} Found!"
  end

  # this is a data field
  def bag
    @bag
  end

  # this is a method
  def add_to_bag(ingredient)
    @bag.push(ingredient)
  end

  # this is a method
  def learn

  end

end

