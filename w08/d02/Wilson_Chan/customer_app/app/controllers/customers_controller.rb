class CustomersController < ApplicationController

    respond_to :json

  def index


  end

  def create


  end

  def update

  end

  def destroy

  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :email, :loyalty_code)
  end

end
