class Animal

  attr_accessor :name, :age, :species, :toys

  def initialize(name, age=nil, species=nil)
  	@name = name
  	@age = age
  	@species = species
  	@toys = []
  end

  def to_s
  	"#{@name} is a #{@age} year old #{@species} that loves #{@toys.join(', ')}"
  end

  def has_toys
  	@toys << toys
  end
end
  # def create
  #   puts "What kind of animal is #{@name}?"
  #   species = gets.chomp
  #   puts "How old is #{@name}?"
  #   age = gets.chomp
  #   animal1 = Animal.new(name, age, species)
  #   puts animal1.to_s
  #   @happitails.accept_animal(name, animal1)
  #   puts "#{@name} has been added"
  # end

	# def add_toys
	  	
	 
	#     puts "Does #{@name} have toys to enter?"
	#     puts "Yes or no?"
	#        # this can be better, take multiple toys
	#     toy_entry = gets.chomp.downcase
	#     	if toy_entry == "yes"
	# 	      puts "What kind of toy?"
	# 	      toy = gets.chomp
	# 	      self.has_toys(toys)
	# 	      puts "OK, #{@name}'s #{@toys} will be safe with us."
	# 	      self.add_toys
	#     	elsif toy_entry == "no"
	# 	      puts "OK, we're done!"
	# 	      menu
	#     	end
	#     add_toys
 #  	end
	# 	    # when 
	# 	    #  	 toy_entry == "no"
	# 	    #   puts "OK, we're done!"
	# 	    #   menu
	# 	    # end
	# 	    # if condition
		    	
	# 	    # end
	# 	    # 	while toy_entry == "yes"
	# 	    #   puts "What kind of toy?"
	# 	    #   toy = gets.chomp
	# 	    #   self.has_toys(toys)
	# 	    #   puts "OK, #{@name}'s #{@toys} will be safe with us."
	# 	    #   self.add_toys
	# 	    #  end


# animal1 = Animal.new("ben", 4, "dog")
# animal1.to_s