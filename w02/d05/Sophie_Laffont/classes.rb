class MyClass



	def initialize()
		@field = ''			#set to and empty string
	end


	attr_accesor :data_field 
	### AUTOMATICALLY EXAPANDS INTO THE FOLLOWING TWO METHODS


	def .data_field
		return @field
	end

	def .data_field=(input)	
		@field = input
	end

end


object = MyClass.new()

object.field 			#gets info out of the object field
object.field= value 	#puts info into the object field