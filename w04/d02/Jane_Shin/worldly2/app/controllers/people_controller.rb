class PeopleController < ApplicationController

	def create
		Person.create(person_attributes)
		redirect_to "people/#{person_attributes[:id]}"
		# redirect_to "/countries/#{person_attributes[:country_id]}"
	end

	def show
		@person = Person.find(params[:id])
	end

	private

	def person_attributes
		#do you need to pass countr_id for the hidden_field?
	  params.require(:person).permit(:name)
	end

end