load './student.rb'
load './table.rb'

john = Student.new

john.find("jelly")
john.find("peanut-butter")
john.find("bread")
puts 
puts "John's bag appears below"
puts john.bag

table = Table.new(size: "tiny and bread-sized")

john.empty_bag_on(table)
john.puts("jelly").on(@bag["bread"])
john.put("peanut-butter").on(@bag["bread"])
sandwich = john.close_up(table["bread"])
#don't make code too complicated... only code what you need to get your task done simply

puts "Your Sandwich is ready!"
puts sandwich