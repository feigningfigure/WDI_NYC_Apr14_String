class Soldier

	attr_accessor :first_name, :last_name

	def initialize (first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def p_last_name
		puts @first_name
	end

end

soldiers = ["Alvin York", "Nina Price", "Percy Pinkerton", "Abigail Brand"]

soldiers.each do |soldier|
	soldier.split.each_with_index do |name, index|
		case index
		when 0
