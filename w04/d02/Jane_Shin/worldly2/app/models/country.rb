class Country < ActiveRecord::Base
	belongs_to :continent
	has_many :people, through: :visas
	has_many :visas

	def add_visa(quantity, person_name)
		visa = Visa.find_by_name(person_name)
		if visa
			self.visas << Visa.create({
				quantity: quantity
				})
		else
			puts "Unable to process visa for #{person_name}. Reapply!"
			nil
		end
	end
end