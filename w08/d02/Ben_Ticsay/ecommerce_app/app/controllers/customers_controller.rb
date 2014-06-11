class CustomersController < ApplicationController

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
    params.require(:customer).permit(:name, :email, :address, :loyalty_code)
  end
  
end
