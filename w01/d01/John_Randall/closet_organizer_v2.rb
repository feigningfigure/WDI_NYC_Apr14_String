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








#### CLASSES
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
	

	def initialize
		@current_item = nil
	end

	def scan_current_item(index_of_clothing_descriptions)
		current_item_type = index_of_clothing_descriptions[@current_item]
		if current_item_type == "Green Shirt" || current_item_type == "Blue Shirt" || current_item_type == "pants"
			return current_item_type
		else
			puts "Scanner error: Item is neither a green shirt, blue shirt, nor pants"
			return nil
		end
	end

end





#### GIVEN BY PROMPT
puts "Given by prompt..."
puts ""
clothing_directory_hash = {
	# This is read by the scanner to determnie clothing types 
	# TODO: This should be globally accessable, so that the scanner can read it directly.
	item1: "Green Shirt",
	item2: "Blue Shirt",
	item3: "pants",
	item4: "Green Shirt",
	item5: "Blue Shirt",
	item6: "Green Shirt",
}
puts "There are a bunch of clothes: #{clothing_directory_hash}"
puts ""

pile_of_clothes = clothing_directory_hash.keys.to_a.shuffle!		
	# Shuffle the clothes up and drop them in a pile.
puts "shuffleing the clothes..."
puts "There are now a bunch of clothes in a pile..."	# The clothes
puts pile_of_clothes
puts ""
puts "************************************"

top_shelf= []
middle_shelf= []
bottom_shelf= []

scanner = Scanner.new()
mover = Mover.new()








####
#Modeling the process



while pile_of_clothes.length > 0 do
	mover.move_to_scanner(pile_of_clothes, scanner)								# tell mover to move clothes 

	current_item_type = scanner.scan_current_item(clothing_directory_hash)		# tell scanner to scan using clothing directory
																				# TODO: This is clunky– the scanner should be able to read the hash directly. 

	case current_item_type                                       				  # decide location based on scanner response
	when "Green Shirt"
		destination_location = top_shelf
	when "Blue Shirt"
		destination_location = middle_shelf
	when "pants"
		destination_location = bottom_shelf
	end

	mover.move_to_closet(scanner, destination_location)							#tell mover to move clothes to final destination

end


#Controller.go(clothing_directory_hash, pile_of_clothes, desired_result_hash)




puts "Finished..."
puts ""
puts "Top_self contains Green Shirts, which are #{top_shelf}"						# report what is on the shelf
puts "Middle Shelf contains Blue Shirts, which are #{middle_shelf}"
puts "Bottom Shelf contains pants, which are #{bottom_shelf}"
puts ""