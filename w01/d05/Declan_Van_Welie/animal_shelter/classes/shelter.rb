class Shelter

attr_accessor :shelter_name, :shelter_address, :animals, :clients

def initialize(shelter_name, shelter_address, animals, clients)
@shelter_name = shelter_name
@shelter_address = shelter_address
@animals = []
@clients = []
end
#Below is an attempt to add client to the shelter class, by popping them
#from the client class.
def add_clients
      @clients = []
      new_client = Client.new
      @clients << new_client
    end

def add_animals
      @animals = []
      new_animal = Animal.new
      @animals << new_animal
    end

def to_s
  "My #{name} is a #{age} year old #{species} who loves #{toys}."

  end

end
