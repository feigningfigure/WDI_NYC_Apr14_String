# Part 2
# Whether you made a text file or took a picture of the drawing on your desk, don't forget to put it in your code > wdi > personal > d01 folder
# PseudoCode Activity: Closet-Organization Machine
# Make a machine that organizes a pile of clothes on your bed and then determines which shelf in your closet to put it on based on color.

# Things to know:
# Top Shelf can include only Green Shirts
# Middle Shelf can include only Blue Shirts
# Bottom Shelf can include only pants.

# Core Library of Objects: Let's imagine that the machine has a few core objects:

#   Scanner
#   Mover
# These two components or "objects" receive messages and are capable of various procedures and operations. For example, the mover can move things from one place to another and the scanner can scan other objects and return data about their attributes. For example, it could scan a shirt object and tell you its color.

# NOTE: You may need to add more objects to complete this assignment.



class Mover
	@current_item = nil
	
	def move_to_scanner (source_location, destination_location)
		@current_item = source_location.pop 				#grab from the top of the clothing pile
		destination_location.current_item = @current_item	#deposit on scanner
		@current_item = nil
	end

	def move_to_closet (source_location, destination_location)
		@current_item = source_location.current_item
		source_location.current_item = nil
		destination_location.push(@current_item)
		@current_item = nil
	end
end



class Scanner
	attr_reader :current_item
  	attr_writer :current_item
	@current_item = nil

	def initialize
		#current_item = nil
	end

	def scan_current_item_for_color()
		case @current_item
		when "greenShirt"
			return :greenShirt
		when "blueShirt"
			return :blueShirt
		when "pants"
			return :pants
		else "Scanner error: Item is neither a green shirt, blue shirt, nor pants"
		end
	end

end


pile_of_clothes = ["greenShirt", "blueShirt", "pants", "greenShirt", "greenShirt"]

top_shelf= []
middle_shelf= []
bottom_shelf= []

scanner = Scanner.new()

mover = Mover.new()




while pile_of_clothes.length > 0 do
	mover.move_to_scanner(pile_of_clothes, scanner)					# tell mover to move clothes 

	current_item_color = scanner.scan_current_item_for_color()		# tell scanner to scan

	case current_item_color                                         # decide location based on scanner response
	when :greenShirt
		destination_location = top_shelf
	when :blueShirt
		destination_location = middle_shelf
	when :pants
		destination_location = bottom_shelf
	end

	mover.move_to_closet(scanner, destination_location)				#tell mover to move clothes to final destination

end

puts "Top_self contains #{top_shelf}"
puts "Middle Shelf contains #{middle_shelf}"
puts "Bottom Shelf contains #{bottom_shelf}"