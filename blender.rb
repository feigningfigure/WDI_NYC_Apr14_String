class Blender

  attr_accessor :ingredients



	  def initialize(initial_name=nil)
	    puts "I was created!"
	    @name = initial_name
	  end

# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all the characters
# and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!

# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

def blend(smoothie_ingredients)
end

	 # 'getter' method
	  def name_getter
	    @name
	  end

	  def name_setter(new_name)
	    @name = new_name
	  end


  end 