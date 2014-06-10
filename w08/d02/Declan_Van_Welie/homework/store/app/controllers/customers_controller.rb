class CustomersController < ActionController::Base

  respond_to :json

  def index
    customers = Customer.all
    respond_with customers

    # For this example, we do not need to the belwo respond_to since have the entire class/controller already responding to json
    # respond_to do |format|
    #   format.json { render :json => @people.to_json }
    #   format.html
    # end

  end

  def create
    customer = Customer.create(customer_params)

    # respond_to do |format|
    #   format.html { redirect_to person_path(person) }
    #   format.json { render :json => person.to_json }
    # end

    respond_with customer
  end

  # def update
  #   customer = Customer.find(params[:id])
  #   customer.update(customer_params)
  # end

  # def destroy
  #   Customer.delete(params[:id])
  # end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :email, :loyalty_code)
  end

end
