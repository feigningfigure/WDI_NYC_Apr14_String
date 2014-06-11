class PeopleController < ApplicationController
  def index
    @people = Person.all
    @person = Person.new
  end

  def create
    Person.create(person_params)
    redirect_to '/'
  end



 private

  def person_params
    params.require(:person).permit(:name)
  end

end
