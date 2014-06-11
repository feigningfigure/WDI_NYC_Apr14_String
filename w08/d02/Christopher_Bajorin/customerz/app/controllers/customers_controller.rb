class CustomersController < ApplicationController

  respond_to :json

  def index
    customer = Customer.all
    respond_with customer

    # For this example, we do not need to the below respond_to since we have the entire class/controller already responding to json
    # respond_to do |format|
    #   format.json { render :json => @customer.to_json }
    #   format.html
    # end

  end

  def create

    customer = Customer.create(customer_params)

    # respond_to do |format|
    #   format.html { redirect_to customer_path(customer) }
    #   format.json { render :json => customer.to_json }
    # end
    respond_with customer
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
  end

  def destroy
    Customer.delete(params[:id])
    # customer=Customer.all
    respond_with customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :email, :loyalty_code)
  end


end
