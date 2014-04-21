load './student.rb'
load './table.rb'

john = Student.new

john.find_and_put_into_bag("jelly")
john.find_and_put_into_bag("peanut butter")

table = Table.new(size: "tiny and breadsized")

john.bag # remove ?
john.empty_bag_on(table)
# john.put_bag_down
john.put("jelly").on(table["bread"])
john.put("peanut butter").on(table["bread"])
sandwich = john.close_up(table["bread"])

puts "Your Sandwich is ready!"
john.eats(sandwich)

# added comment
