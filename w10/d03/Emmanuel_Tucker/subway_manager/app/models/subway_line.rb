class SubwayLine < ActiveRecord::Base
     has_many :stops , :through :stations
end
