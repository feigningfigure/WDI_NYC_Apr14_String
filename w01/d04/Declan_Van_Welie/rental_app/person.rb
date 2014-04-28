class Person

  attr_accessor :name, :age, :gender, :floors, :apartment

def initialize(attributes={})
  puts "Please add the person's name."
  @name = gets.chomp.to_s
  puts "Please input the user's age."
  @age = gets.chomp.to_s
  puts "Please input the user's gender."
  @gender= gets.chomp.to_s
  puts "Please tell me how many floors are in their building."
  @floors = gets.chomp.to_s
  puts "Please tell me which apartment they're in."
  @apartment= gets.chomp.to_s

end

# def create_new_tenant(name, age, gender, floors, apartment)

end

# person = Person.new
# # person.name = "Dennis"
# # person.age = 23
# # person.gender = "male"
# # person.floors = 50
# # person.apartment = "1B"

# puts person.name
# puts person.age
# puts person.gender
# puts person.floors
# puts person.apartment


# def create_new_tenant(name, age, gender, floors, apartment)

#       person = Person.new
#       "Please tell me the name of the new tenant"
#       person.name = "Dennis"
#       person.age = 23
#       person.gender = "male"
#       person.floors = 50
#       person.apartment = "1B"

#       puts person.name
#       puts person.age
#       puts person.gender
#       puts person.floors
#       puts person.apartment

#     end
#     create_new_tenant(name, age, gender, floors, apartment)
