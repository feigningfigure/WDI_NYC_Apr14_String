class Shelter

attr_accessor :name, :shelter_address, :animals, :clients

def initialize(name, shelter_address, animals, clients)
@name = name
@shelter_address = shelter_address
@animals = Hash.new
@clients = Hash.new
end

def client_hash(k, v)
      @clients[k] = "a client"
  end

  def accept_client(k, v)
      @clients[k] = v
  end

  def client_count
     @clients.length
  end

  def animal_count
     @animals.length
  end

  def display_animals
    @animals.each do |k,v|
      puts k
    end
  end

def display_clients
    @clients.each do |k,v|
      puts k
    end
  end

  def give_away_animal

  end

#Below is an attempt to add client to the shelter class, by popping them
#from the client class.
# def add_clients(clients_array)
#       clients_array.each do |name_hash|
#       @clients << Client.new(name_hash)
#     end
#   end

def accept_animal(k, v)
      @animals[k] = v
    end

def to_s
  "#{name} shelter at #{shelter_address} has #{animal_count} animals and #{client_count} people"

  end

end
