require 'rainbow/ext/string'

class Shelter

  attr_accessor :name, :address, :clients, :animals

  def initialize(name="HappiTails", address=nil)
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
    @animals.delete(name)
  end

  def accept_animal(name, pet_hash)
    @animals[name] = pet_hash
  end

  def accept_client(name, client_hash)
    @clients[name] = client_hash
  end


  def to_s
    "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  end

end
