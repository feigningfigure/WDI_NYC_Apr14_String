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


john = Student.new

john.find_and_put_into_bag("jelly")
john.find_and_put_into_bag("peanut butter")


john.bag # remove ?
john.empty_bag_on(table)
# john.put_bag_down
john.put("jelly").on(table["bread"])
john.put("peanut butter").on(table["bread"])
sandwich = john.close_up(table["bread"])

puts "Your Sandwich is ready!"
john.eats(sandwich)

# added comment
