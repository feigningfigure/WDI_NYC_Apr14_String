class Person

	attr_accessor :name

#inheriting from a module
include NinjaTraining

	def intialize(name)
		@name = name
	end

	def real_ultimate_power?
		true
	end
end