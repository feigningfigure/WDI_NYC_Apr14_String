class CustomersController < ApplicationController

  respond_to :json
  
  def index
    customers = Customer.all
    respond_with customers
  end

  def create
    customer = Customer.create(customer_attributes)
    respond_with customer
  end 


  def update
    
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    customers = Customer.all
    respond_with customers
  end

  private

  def customer_attributes
    params.require(:customer).permit(:name, :address, :email, :loyalty_code)
  end

end