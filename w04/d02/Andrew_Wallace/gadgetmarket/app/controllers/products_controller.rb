class ProductsController < ApplicationController

  # INDEX METHOD
  def index
    #Define the instance variable 'products' and sort them in index by descending order by their id.
    @products = Product.order(id: :desc)

    # Create a new instance of product that can be used by the form helper
    @product = Product.new
  end

# SHOW PRODUCTS
  def show

    # Set the instance variable to be equal to the finding the user by their id within the Product table.
    @product = Product.find(params[:id])

  #   # This line is needed for the form to work.
  #@product = Product.new
  @company = Company.find(params[:id])
  end



# CREATE A NEW PRODUCT -- SECURELY WHICH MEANS CALL THE PRIVATE METHOD AT THE BOTTOM.
  def create

    Product.create(product_attributes)

    #Rails helper 'redirect_to' to the Rails helper for the path for 'users'.
    redirect_to products_path

  end

# EDIT PRODUCT
  # def edit
  #   @user = User.find(params[:id])

  # #FURTHER EXPLANATION NEEDED OF PARTIALS
  #   render partial: "userform", locals: { user_local: @user }
  # end

# UPDATE PRODUCT
  # def update

  #   user = User.find(params[:id])

  #   # Update the user attributes of the user
  #   user.update_attributes(user_attributes)

  #   # After update, send vistor to page of the user id they just updated.
  #   redirect_to "/users/#{params[:id]}"
  # end



#----PRIVATE METHODS----
private

  def product_attributes # Called up to create a new user.

    # Whitelist (allow only certain parameters to pass through from the form)
    # LEARN MORE ABOUT THE FOLLOWING LINE.
    params.require(:product).permit(:name, :price, :description) #:distributor_id)
  end

end

