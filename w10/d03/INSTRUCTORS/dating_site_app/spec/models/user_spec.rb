require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should have a username" do
    u = User.create(username: 'CreepoDude99')
    expect(u.username).to eq('CreepDude99')
  end
end
