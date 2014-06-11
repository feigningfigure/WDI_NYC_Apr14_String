class CustomersController < ApplicationController 

	respond_to :json

	def index
		customers = Customer.all

		respond_with customers
	end

	def show
	end

	# def new
	# end

	def create
		customer = Customer.create(customer_params)

		respond_with customer

	end

	def update

	end

	def destroy

	end

	def customer_params
    	params.require(:customer).permit(:name, :address, :email)
 	end
end