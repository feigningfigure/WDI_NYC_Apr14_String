class Stops < ActiveRecord::Base
     belongs_to :subwayline
     belongs_to :station
end
