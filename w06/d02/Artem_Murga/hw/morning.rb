class Soldier

	attr_accessor :all_last

	@@all_last = []
	

	def initialize (first, last)
		@first = first
		@last = last
		@@all_last << @last
	end

	def last
		puts @last
	end

	def price_method
		puts @first + " " + @last if @last == "Price"
	end

	def price_class
	end

	def self.all_last_names
		@@all_last
	end

	def self.size
		hash = Hash.new
		@@all_last.each do |string|
			size = string.size
			hash[string] = size
		end
		max = hash.max_by {|k,v| v}
		p max[0]
		
	end 

end

a = Soldier.new("Alvin", "York")
b = Soldier.new("Nina", "Price")
Soldier.new("Percy", "Pinkerton")
Soldier.new("Abigali", "Brand")

Soldier.size
