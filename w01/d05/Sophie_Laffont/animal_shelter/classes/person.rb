class Person

	attr_accessor :name, :age , :gender , :num_of_children, 
	:pets

	def initialize(name, gender= nil, age= nil,  num_of_children = nil, pets = [])
		@name = name
		@gender = gender
		@age = age
		@num_of_children = children
		@pets = pets
	end

 # 'getter' method
  def name_getter
    # an 'instance' variable.
    # they must begin with @
    @name
  end

  # 'setter' method re-writes an instance variable
  def name_setter(new_name)
    @name = new_name
  end
end
