class PeopleController < ApplicationController

  respond_to :json

  def index
    people = Person.all
    respond_with people

    # For this example, we do not need to the below respond_to since have the entire class/controller already responding to json
    # respond_to do |format|
    #   format.json { render :json => @people.to_json }
    #   format.html
    # end

  end

  def create
    person = Person.create(person_params)

    # respond_to do |format|
    #   format.html { redirect_to person_path(person) }
    #   format.json { render :json => person.to_json }
    # end

    respond_with person
  end

  # def update
  #   person = Person.find(params[:id])
  #   person.update(person_params)
  # end

  # def destroy
  #   Person.delete(params[:id])
  # end

  private

  def person_params
    params.require(:person).permit(:name)
  end

end
