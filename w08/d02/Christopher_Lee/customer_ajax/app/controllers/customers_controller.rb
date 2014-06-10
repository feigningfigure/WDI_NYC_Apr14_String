class CustomersController < ApplicationController

  respond_to :json

  def index
    customer = Customer.all
    respond_with customer
  end

  def create
    customer = Customer.create(customer_params)
    respond_with person
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
  end

  def destroy
    Customer.delete(params[:id])
  end

  private

  def person_params
    params.require(:person).permit(:name)
  end

end
