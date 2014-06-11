class CustomerController < ApplicationController

  respond_to :json

  def index
    customer = Customer.all
    respond_with customer
  end


  def create
    customer = Customer.create(customer_params)

    respond_with customer
  end

  def destroy
     Customer.delete(params[:id])
  end

private

  def customer_params
    params.require(:customer).permit(:name, :address, :email, :loyalty_code)
  end

end
