class Device < ActiveRecord::Base
  # Define the table that the Device table belongs to.
  belongs_to :user

end
