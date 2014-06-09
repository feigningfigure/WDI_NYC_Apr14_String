# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

  has_secure_password
  
  has_secure_password
  #this ^ is a method of bcrypt
  #the reason that we do this roundabout thing
  #is that if a hacker got access to your database
  # they would all have access to your emails
  # and if they get your emails
  # it is likely that most people use the same password everywhere
  # and then they will have access to all that users bank accounts, etc.

end
