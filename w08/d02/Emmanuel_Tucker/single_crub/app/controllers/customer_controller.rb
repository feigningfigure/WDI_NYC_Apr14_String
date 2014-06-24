class CustomerController < ApplicationController

respond_to :json

     def index
          customer = Customers.all
          respond_with Customers

     end



def create
     customer = Customers.create(customers_params)

end


     def update
          customer = Customers.find(params[:id])
          customer.update(customer_params)
      end




     private

     def customer_params

          params.require(:customer).permit(:name :address :email :loyalty_code)
     end

end
