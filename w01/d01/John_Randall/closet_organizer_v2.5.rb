# Part 2
# Whether you made a text file or took a picture of the drawing on your desk, don't forget to put it in your code > wdi > personal > d01 folder
# PseudoCode Activity: Closet-Organization Machine
# Make a machine that organizes a pile of clothes on your bed and then determines which shelf in your closet to put it on based on color.

# Things to know:
# Top Shelf can include only green Shirts
# Middle Shelf can include only blue Shirts
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
		puts "mover running move_to_scanner"
		puts "mover trying to move from #{source_location} to #{destination_location}"
		@current_item = source_location.pop 				#grab from the top of the clothing pile
		puts "mover picked up #{@current_item}"
		destination_location.current_item = @current_item	#deposit on scanner
		@current_item = nil
	end

	def move_to_closet (source_location, destination_location)
		puts "mover running move_to_closet"
		puts "mover trying to move from #{source_location} to #{destination_location}"
		@current_item = source_location.current_item
		puts "mover pickedup #{@current_item} again"
		source_location.current_item = nil
		destination_location.push(@current_item)
		puts "mover droped #{@current_item} at #{destination_location}"
		@current_item = nil
	end
end



class Scanner
	attr_reader :current_item
  	attr_writer :current_item
	
	def initialize
		@current_item = nil
	end

	def scan_current_item()
		puts "scanner is scanning #{@current_item}"
		current_item_type = $clothing_directory_hash[@current_item]
		puts "scanner has determined that #{@current_item} is #{current_item_type}"
		if current_item_type == :greenShirt || current_item_type == :blueShirt || current_item_type == :pants
			return current_item_type
		else
			puts "Scanner error: Item is neither a green shirt, blue shirt, nor pants"
			return nil
		end
	end

end


class Machine_Controler
	def go(source_location, desired_results_directory, mover, scanner)
		puts "Machine Controler go"
		while source_location.length > 0
			puts ""
			puts "machine controler start loop----------------------------------"
			puts "machine controler is telling mover to pickup from pile"
			mover.move_to_scanner(source_location, scanner)								# tell mover to move clothes 

			puts "machine controler is asking item type from the scanner"
			current_item_type = scanner.scan_current_item()		# tell scanner to scan using clothing directory
			puts "machine controler has learned that current_item_type is #{current_item_type}"
			
			destination_location = desired_results_directory[current_item_type]			# determine intended destination based on prompt
			puts "machine controler has decided that destination_location is #{destination_location}"
			
			puts "machine controler is telling mover pickup from scanner and move to #{destination_location}"
			mover.move_to_closet(scanner, destination_location)							#tell mover to move clothes to final destination
		end
	end
end







#### GIVEN BY PROMPT
puts ""
puts ""
puts "*************************"
puts "GIVEN BY PROMPT..."
puts ""


puts "There are three shelves"
$top_shelf= []
$middle_shelf= []
$bottom_shelf= []


###### HELP !  THIS DOESN'T WORK RIGHT!!!!
$desired_results_directory_hash = {
		### THIS IS THE PROBLEM
	greenShirt: $top_shelf,
	blueShirt: $middle_shelf,
	pants: $bottom_shelf
}
puts "these are the results we want:"
puts $desired_results_directory_hash
puts ""


$clothing_directory_hash = {
	# This is read by the scanner to determnie clothing types 
	# TODO: This should be globally accessable, so that the scanner can read it directly.
	item1: :greenShirt,
	item2: :blueShirt,
	item3: :pants,
	item4: :greenShirt,
	item5: :blueShirt,
	item6: :greenShirt,
}
puts "There are a bunch of clothes: #{$clothing_directory_hash}"
puts ""

# Shuffle the clothes up and drop them in a pile.
puts "shuffleing the clothes..."
pile_of_clothes = $clothing_directory_hash.keys.to_a.shuffle!		
puts "There are now a bunch of clothes in a pile..."	# The clothes
puts pile_of_clothes
puts ""

puts "************************************"

scanner = Scanner.new()
mover = Mover.new()
machine_controler = Machine_Controler.new()







#### DO IT
machine_controler.go(pile_of_clothes, $desired_results_directory_hash, mover, scanner)


puts ""
puts ""
puts ""
puts "Finished..."
puts ""
puts "Top_self contains green Shirts, which are #{$top_shelf}"						# report what is on the shelf
puts "Middle Shelf contains blue Shirts, which are #{$middle_shelf}"
puts "Bottom Shelf contains pants, which are #{$bottom_shelf}"
puts ""