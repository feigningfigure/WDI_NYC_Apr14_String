require 'spec_helper'

describe Station do
it { should validate_presence_of(:address) }
it { should have_many(:stops) }
it { should have_many(:lines) }


end
