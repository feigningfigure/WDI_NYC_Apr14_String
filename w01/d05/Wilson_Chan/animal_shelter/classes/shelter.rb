class Shelter

  attr_accessor :name, :animals
  def initialize(name, animals)
    @name = name
    @animals = {}

  end

  def to_s
    "#{name} shelter at 10 East 21st Street has 0 animals and 0 people"
  end

end




