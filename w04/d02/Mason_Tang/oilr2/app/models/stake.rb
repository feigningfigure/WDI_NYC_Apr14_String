class Stake < ActiveRecord::Base

  belongs_to  :oilfield
  belongs_to  :operator


end
