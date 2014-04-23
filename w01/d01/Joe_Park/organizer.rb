#pile of clothes on bed
#move clothes to shelf in closet based on color
#scanner & mover

class Scanner
	def initialize(type, color)
		@type = type
		@color = color
	end

	def categorize_clothes()
		if @type == "pants" 
			:pants
		elsif @type == "shirt" && @color == "green" then
			:greenshirt
		elsif @type == "shirt" && @color == "blue" then
			:blueshirt
		else
			puts "Error unidentified type"
		end
	end

end

class Mover
	def initialize(top, middle, bottom)
		@shelf_top = top
		@shelf_mid = middle
		@shelf_bot = bottom
	end

	def take_and_fold()

	end

	def relocate_clothes()
		if :greenshirt then
			@shelf_top.push
		elsif :blueshirt then
			@shelf_mid.push
		elsif :pants then
			@shelf_bot.push
		else 
			puts "Failed"
		end

	def 

	end

end



clothing_from_bed = Scanner.new("shirt", "green")
clothing_from_bed.categorize_clothes()

clothing_from_bed = Mover.new[:greenshirt]
clothing_from_bed.take_and_fold()
clothing_from_bed.relocate_clothes()