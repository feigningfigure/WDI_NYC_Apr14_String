require 'rails_helper'
require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe SubwayLine, :type => :model do
  it { should validate_presence_of(:name) }

  # it { should have_many(:stations)}
end
