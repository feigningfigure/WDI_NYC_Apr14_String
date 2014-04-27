class Shelter

  attr_accessor :name, :address, :clients, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @clients = Hash.new
    @animals = Hash.new
  end


  def client_count
    @clients.length
  end

  def animal_count
    @animals.length
  end

  def display_animals
    animals.each do |k,v|
      puts k
    end
  end

  def display_clients
    clients.each do |k,v|
      puts k
    end
  end

  def give_away_animal(name)

  end

  def accept_animal(name, pet_object)
    @animals[name] = pet_object
  end

  def accept_client(name, client_object)
    @clients[name] = client_object
  end


  def to_s
    "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  end

end
