require 'rails_helper'

RSpec.describe Stop, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"


  describe Stop do
  	it {should belong_to(:station)}
  end

  describe Stop do
  	it {should belong_to(:subway_line)}
  end
end
