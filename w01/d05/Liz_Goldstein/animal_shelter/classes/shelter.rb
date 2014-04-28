class Shelter

  attr_accessor :name, :address, :animals, :clients

  def initialize(name, address)
    @name = name
    @address = address
    @animals = {}
    @clients = {}
  end

  def display_animals
    @animals.each {|key, value| puts key}
  end

  def display_clients
    @clients.each {|key, value| puts key}
  end

  def give_away_animal(name)
    if @animals.include?(name)==true
      @animals.delete(name)
    end
  end

  def accept_animal(name, value)
    @animals[name] = value
  end

  def accept_client(name, value)
    @clients[name] = value
  end

  def client_count
    @clients.length
  end

  def animal_count
    @animals.length
  end

  def to_s
    p "#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
  end

end





#   attr_accessor :name :address

#   def initialize(name, adress)
#     @name = name


#   def to_s
#    	puts "#{@name} located at #{@address}"
#   end

#   def display_animals
#   	puts "#{@animal}"
#   end

#   def display_clients
# 	puts ("#{person.name} is a #{person.age} year old #{person.gender} with #{person.pets} pets")
#     end
#   end

#   def adopt
#   	#COME BACK TO THIS
#   end

# end
