class CustomersController < ApplicationController

  # This class will only respond to JSON
  respond_to :json

  def index
    customers = Customer.all
    respond_with customers
  end

  def create
    customer = Customer.create(customer_params)
    respond_with customer
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
  end

  def destroy
    Customer.delete(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :email, :loyalty_code)
  end

end
