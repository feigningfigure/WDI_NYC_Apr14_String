class Shelter

  attr_accessor :name, :clients, :address, :animals


  def initialize(name, address)
    @name = name
    @address = address
    @clients = {}
    @animals = {}

  end


  def animal_count
    @animals.count
  end

  def client_count
    @clients.count
  end

  def display_animals
      @animals.each {|k,v| puts k}
  end

  def display_clients
      @clients.each {|k,v| puts k}
  end

  def accept_animal(animal_name, type)
      @animals[animal_name] = type
  end

   def accept_client(client_name, name_alt)
      @clients[client_name] = name_alt
  end

  def give_away_animal(animal_name)
    if
      @animals.include?(animal_name)
      @animals.delete(animal_name)
    end
  end


  def to_s
    "#{@name} shelter at #{@address} has #{animal_count} animals and #{client_count} people"
  end



end
