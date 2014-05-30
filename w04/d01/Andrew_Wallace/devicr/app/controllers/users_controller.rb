class UsersController < ApplicationController

# INDEX METHOD
  def index
    #Define the instance variable 'users' and sort them in index by descending order by their id.
    @users = User.order(id: :desc)

    # Create a new instance of user that can be used by the form helper
    @user = User.new
  end

# SHOW USERS
  def show

    # Set the instance variable to be equal to the finding the user by their id within the User table.
    @user = User.find(params[:id])

  #   # This line is needed for the form to work.  (BUT WHY?)
  @device = Device.new
  end

# CREATE A NEW USER -- SECURELY WHICH MEANS CALL THE PRIVATE METHOD AT THE BOTTOM.
  def create

    User.create(user_attributes)

    #Rails helper 'redirect_to' to the Rails helper for the path for 'users'.
    redirect_to users_path

  end

# EDIT USER
  # def edit
  #   @user = User.find(params[:id])

  # #FURTHER EXPLANATION NEEDED OF PARTIALS
  #   render partial: "userform", locals: { user_local: @user }
  # end

# UPDATE USER
  # def update

  #   user = User.find(params[:id])

  #   # Update the user attributes of the user
  #   user.update_attributes(user_attributes)

  #   # After update, send vistor to page of the user id they just updated.
  #   redirect_to "/users/#{params[:id]}"
  # end



#----PRIVATE METHODS----
private

  def user_attributes # Called up to create a new user.

    # Whitelist (allow only certain parameters to pass through from the form)
    # LEARN MORE ABOUT THE FOLLOWING LINE.
    params.require(:user).permit(:name)
  end

end

