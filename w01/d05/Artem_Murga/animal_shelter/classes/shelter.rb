class Shelter
	
	attr_reader: animals

	def initialize (name)
		@name = name
		@animals = []
		@clients = []
	end	

	def adopt 
		 #A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
	end		
		#A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
	def clients

	end		
end
