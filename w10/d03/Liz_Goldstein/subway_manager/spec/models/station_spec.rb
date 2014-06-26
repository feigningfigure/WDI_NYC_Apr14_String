require 'rails_helper'
# require 'spec_helper'

RSpec.describe Station, :type => :model do

  it { should have_many(:subway_lines).through(:stops) }
  it { should validate_presence_of(:address) }

end
