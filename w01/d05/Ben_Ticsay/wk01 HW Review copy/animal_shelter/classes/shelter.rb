class Shelter

  attr_accessor :name :animals :clients

  def initialize(name, animals, clients)
    @name = name
    @animals = animals
    @clients = []
  end

  def new

  end

  def to_s
  puts "#{@name} shelter has #{@animals} and #{@clients}"
  end

  def deisplay_animals

  end

  def display_clients

  end

  def adopt

  end

end
