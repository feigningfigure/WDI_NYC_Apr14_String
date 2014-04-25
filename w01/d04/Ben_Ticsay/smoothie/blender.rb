class Blender
	attr_accessor :power :switch

	def initialize(power, switch)
		@power = power
		@switch = switch
	end

end

Blender.new("off", "off")