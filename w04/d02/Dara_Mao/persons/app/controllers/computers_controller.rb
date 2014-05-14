class ComputersController < ApplicationController

  def create
    Computer.create(computer_attributes)
    redirect_to "/people/#{computer_attributes[:person_id]}"
  end

  def edit
    @computer = Computer.find(params[:id])
    render partial: "computerform", locals: { computer_local: @computer, person_id: @computer.person.id }
  end

  def update
    computer = Computer.find(params[:id])
    computer.update_attributes (computer_attributes)
    redirect_to "/people/#{computer.person.id}"
    # render json: params
  end

  private

  def computer_attributes
    params.require(:computer).permit(:owner, :maker, :person_id)
  end

end
