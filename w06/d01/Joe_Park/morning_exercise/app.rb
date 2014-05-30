soldier_array = ["Alvin York", "Nina Price", "Percy Pinkerton", "Abigail Brand"]
@names = []
@last_name = []


class Soldier

	# attr_accessor :first_name, :last_name

	# def initialize

	# end

	def print_last_name(array)
		
		array.each do |full_name|
			@names << full_name.split(" ")
		end

		@names.each do |lname|
			@last_name << lname[1]
		end

	end

	def find(name)
		@last_name.each do |x|
			if x.include? name
				print x
			else
				"boo"
			end
		end
	end


	def longest_last_name
		@last_name.max_by { |x| x.length }
	end




end