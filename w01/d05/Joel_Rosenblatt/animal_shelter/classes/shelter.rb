require_relative 'client'
require_relative 'animal'



class Shelter
  attr_accessor :name, :address, :animals, :clients
  def initialize(name=nil, address=nil)
    @name = name
    @address = address
    @clients = {}
    @animals = {}
  end

  def to_s
    "#{@name} shelter at #{@address} has #{@animals.count} animals and #{@clients.count} people"
  end

  def client_count
    @clients.count
  end

  def display_clients
    @clients.each { |k, v| puts k }
  end

  def animal_count
    @animals.count
  end

  def display_animals
    @animals.each { |k, v| puts k }
  end


  def accept_client(name, client_name)
    @clients[name] = client_name
  end

  def accept_animal(name, animal_name)
    @animals[name] = animal_name
  end

  def give_away_animal(name)
    @animals.delete(name)
  end

end
