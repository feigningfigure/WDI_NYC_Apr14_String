class Shelter

attr_accessor :name, :animals, :clients

  def initialize(name)
    @name = name
    @animals = []   # make it a hash so animals names??
    @clients = []
    # @address = address ... just if there's extra time.
  end

  def to_s
    p "#{@name} currently has #{@animals.length} and #{@clients}."
  end

  def display_animals
    p "Check out my #{@animals.length} pets for adoption: #{@animals.to_s}"
  end

  def count_animals
    p "There are #{@animals.length} animals in the #{@name} shelter now."
  end

  def display_clients
    p "Here is our client list: #{@clients}"
  end

end

# happitails = Shelter.new("HappiTailes")
# happitails.animals << "Fluffy"
# happitails.display_animals
# happitails.count_animals
# happitails.clients << "Lizzy"
# happitails.clients << "Sara"
# happitails.display_clients
