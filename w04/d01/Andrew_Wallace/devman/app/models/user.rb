class User < ActiveRecord::Base
# gives all the user instances a .devices method
  has_many :devices

end

