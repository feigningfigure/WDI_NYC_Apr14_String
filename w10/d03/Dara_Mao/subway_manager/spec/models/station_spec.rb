require 'rails_helper'
require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe Station, :type => :model do
    it { should have_db_column(:address) }
end
