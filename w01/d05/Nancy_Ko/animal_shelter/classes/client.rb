# class Client
# attr_accessor :client, #:adopt_animal:
# :age

#   def initialize (client, age)
#      # pets, give_up num_of_pets)
#     @client = client
#     @age = age
#     # @client.name = []
#     # @adopt_animal = adopt_animal
#     # @pets = pets
#     # @give_up = give_up
#     # @num_of_pets = num_of_pets
#   end

#   def new_client
#     client = "Bob"
#     age = 40
#     return new_client 
#   end

# # def display_clients
# # end

# # def create_client


# # end

# # def adopt_animal

# # end

# # def animal_for_adoption
# # end

#   # def change_name(name)
#   #   client.each do |name|
#   #     puts change.name     
#   # end


#   # def give_up
#   # 	num_of_pets -= 1
#   # 	puts "#{name} was given up for adoption!"
#   # 	return 
#   # end
# end
class Client
attr_accessor :name, :age, :pets, :gender, :kids, :number_of_pets, :species

  def initialize (name, age)
    @name = name
    @age = age
    @pets = Hash.new
    @number_of_pets = number_of_pets
    @gender = gender 
    
  end

  def to_s
    "#{name} is a 30 year old with 0 pets"
  end

    def give_up(name, species, age, gender, toys)
    number_of_pets -= 1
    puts "#{name} was given up for adoption!"
    return Animal.new(name, species, age, gender, toys)
  end


end


