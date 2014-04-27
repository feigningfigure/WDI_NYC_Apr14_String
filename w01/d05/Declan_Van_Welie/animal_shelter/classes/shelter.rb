class Shelter

attr_accessor :shelter, :shelter_address#, :animals, :clients

def initialize(shelter, shelter_address, animals, clients)
@shelter = shelter
@shelter_address = shelter_address
@animals = Hash.new
@clients = Hash.new
end
#Below is an attempt to add client to the shelter class, by popping them
#from the client class.
# def add_clients(clients_array)
#       clients_array.each do |name_hash|
#       @clients << Client.new(name_hash)
#     end
#   end

# def add_animals
#       @animals = []
#       new_animal = Animal.new
#       @animals << new_animal
#     end

def to_s
  "My #{name} is a #{age} year old #{species} who loves #{toys}."

  end

end
