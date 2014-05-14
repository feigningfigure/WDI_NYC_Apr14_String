class Country < ActiveRecord::Base
	belongs_to :continent
	has_many :people, through: :visas
	has_many :visas

	def add_visa(person_name)
		person = Person.find_by_name(person_name)
		if person
			self.visas << Visa.create({
				quantity: quantity
				})
		else
			puts "Unable to process visa for #{person_name}. Reapply!"
			nil
		end
	end
end