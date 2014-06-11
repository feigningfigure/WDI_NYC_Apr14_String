class CustomersController < ApplicationController
	respond_to :json

	def index
		customers = Customer.all
		respond_with customers
	end

	def create

		customers = Customer.create(customer_params)
		respond_with customers
	end

	def update
		customer = Customer.find(params[:id])
		customer = customer.update(customer_params)
		respond_with customer
	end

	def destroy

		respond_with customer
	end

	private

	def customer_params
		params.require(:customer).permit(:name, :address, :email, :loyalty_code)
	end

end
