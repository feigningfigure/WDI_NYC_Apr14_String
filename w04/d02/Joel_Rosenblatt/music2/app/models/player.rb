class Player < ActiveRecord::Base
  belongs_to  :band
  belongs_to  :instrument


end
