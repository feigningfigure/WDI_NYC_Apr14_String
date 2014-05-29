class CompaniesController < ApplicationController

  # INDEX METHOD
  def index
    #Define the instance variable 'users' and sort them in index by descending order by their id.
    @companies = Company.order(id: :desc)

    # Create a new instance of user that can be used by the form helper
    @company = Company.new
  end

# SHOW USERS
  def show
    #render json: params
    # Set the instance variable to be equal to the finding the user by their id within the User table.
    @company = Company.find(params[:id])
    #render json: @company
  #   # This line is needed for the form to work.
   # @product = Product.new
  end

# CREATE A NEW USER -- SECURELY WHICH MEANS CALL THE PRIVATE METHOD AT THE BOTTOM.
  def create

    Company.create(company_attributes)

    #Rails helper 'redirect_to' to the Rails helper for the path for 'users'.
    redirect_to companies_path

  end

# EDIT USER
  def edit
    @company = Company.find(params[:id])

  #FURTHER EXPLANATION NEEDED OF PARTIALS
    #render partial: "userform", locals: { user_local: @user }
  end

# UPDATE COMPANY
  def update

    company = Company.find(params[:id])

    # Update the user attributes of the user
    company.update_attributes(company_attributes)

    # After update, send vistor to page of the user id they just updated.
    redirect_to "/companies/#{params[:id]}"
  end

# DELETE COMPANY
def delete
  Company.find_by(id: params[:id]).destroy
  redirect_to '/companies'
end


#----PRIVATE METHODS----
private

  def company_attributes # Called up to create a new user.

    # Whitelist (allow only certain parameters to pass through from the form)
    # LEARN MORE ABOUT THE FOLLOWING LINE.
    params.require(:company).permit(:name)
  end

end

