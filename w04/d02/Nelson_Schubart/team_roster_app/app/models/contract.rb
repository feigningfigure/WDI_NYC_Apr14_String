class Contract < ActiveRecord::Base
  belongs_to :player
  belongs_to :sponsor
end
