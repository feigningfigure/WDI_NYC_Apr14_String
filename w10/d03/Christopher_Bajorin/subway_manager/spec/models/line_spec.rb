require 'spec_helper'

describe Line do
it { should validate_presence_of(:name) }
it { should validate_presence_of(:color) }
it { should have_many(:stops) }
it { should have_many(:stations) }

end
