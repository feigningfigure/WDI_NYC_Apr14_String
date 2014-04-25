class Building
  attr_accessor :has_doorman, :num_floors, :apartments, :address, :style, :is_walkup, :num_floors

  def initialize (address, style, has_doorman, is_walkup, num_floors)
    @address = address.to_s
    @style = style.to_s
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors.to_i
    @apartments = []
  end

  def to_s
    puts "Welcome to #{@address}, a #{@num_floors} floor building with #{@apartments.length} available apartments. #{@address} #{@is_walkup ? 'is a walkup' : 'was'} built in the #{@style} style. We #{'do not ' unless @has_doorman}have a doorman."
  end

  def take_apartment(apartment)
    @apartments << apartment
  end

end



  # attr_reader :address, :style, :is_walkup, :num_floors
  # def initialize
  #   puts "What is the address of your building?"
  #   @address = gets.chomp
  #   puts "What style is your building?"
  #   @style = gets.chomp
  #   puts "Does your building have a doorman (Y/N)?"
  #     has_doorman = gets.chomp
  #     case has_doorman
  #       when "Y"
  #         @has_doorman = true
  #       when "N"
  #         @has_doorman = false
  #     end
  #   puts "Is your building a walkup (Y/N)?"
  #     is_walkup = gets.chomp
  #     case is_walkup
  #       when "Y"
  #         @is_walkup = true
  #       when "N"
  #         @is_walkup = false
  #     end
  #   puts "How many floors does your building have?"
  #   @num_floors = gets.chomp.to_i
  #   # this will have to change since it needs to be an array of apartment objects
  #   puts "Please list the available apartments in your building (comma separated)"
  #   @apartments = []
  # end
