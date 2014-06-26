require 'rails_helper'

RSpec.describe SubwayLine, :type => :model do



  it { should have_many(:stations, through: :stops) }

end



