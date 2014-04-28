include 'wardrobe.rb'

class ClotheMachine

	def scanner(item)
		if item.color == "green"
			mover(item, nil, "green")
		elsif  item.color == "blue" 
			mover(item, nil, "blue")
		elsif item.type == "pants"
			mover(item, "pants", nil)
		else 
			p "Unknown object. Familiar only with green, blue and pants objects"
		end
	end

	def mover(item, type = nil, color = nil)
		if color == "green" 
			top.shelf << item
		elsif color == "blue"
			middle.shelf << item
		elsif type == @pants
			bottom.shelf << item
		else
			p "Unknown object. Familiar only with green, blue and pants objects"
		end
	end
end





