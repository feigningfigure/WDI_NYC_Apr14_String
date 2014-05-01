class Shelter

attr_accessor :name, :animals, :clients

  def initialize(name, address, animals=nil, clients=nil)
    @name = name
    @address = address
    @animals = {}   # make it a hash so animals names??
    @clients = {}
    # @address = address ... just if there's extra time.
  end

  def to_s
    p "#{@name} currently has #{@animals.length} pet and #{@clients}."
  end

  def display_animals   # add zero case
    p "We currently have #{@animals.length} pets for adoption: #{@animals}."
  end

  def count_animals
    p "There are #{@animals.length} animals in the #{@name} shelter now."
  end

  def display_clients
    p "Here is our client list: #{@clients}"
  end

  def adopt_animal
    p "Here is a list of animals available:"
    self.animals
end
end

# happitails = Shelter.new("HappiTailes")
# happitails[:animals] = {"Fluffy" => "cat"}
# happitails.display_animals
# happitails.count_animals
# happitails.clients << "Lizzy"
# happitails.clients << "Sara"
# happitails.display_clients
