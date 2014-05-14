class Topping < ActiveRecord::Base
   belongs_to_many: :ice_cream_flavors
end
