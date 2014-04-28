class Client
attr_accessor :name, :age, :pets

  def initialize (name, age)
    # @client = []
    @name = name
    @age = age
    @pets = Hash.new
  end

  # def new_client
  #   name = ("Bob")
  #   age = 40
  #   return new_client
  # end

  # def has_pets
  #   if @pets.length > 0
  #     @pets
  #   else
  #     puts "No pets for #{@name}"
  #     @pets
  #   end


end
