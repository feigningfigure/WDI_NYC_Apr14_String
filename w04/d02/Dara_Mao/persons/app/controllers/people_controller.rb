class PeopleController < ApplicationController
  def index
    @people = Person.all
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
    @computer = Computer.new
  end

  def create
    Person.create(person_attributes)
      render json: {
      strong_params: person_attributes
    }
    # redirect_to people_path
  end

  def edit
    @person = Person.find(params[:id])
    # render json: @person
    render partial: "personform", locals: { person_local: @person }
  end

  def update

    person = Person.find(params[:id])

    person.update_attributes(person_attributes)

    # render json: cookbook
    redirect_to "/people/#{params[:id]}"
  end

# Strong Params
private

def person_attributes
  params.require(:person).permit(:name, :profession)
end

end
