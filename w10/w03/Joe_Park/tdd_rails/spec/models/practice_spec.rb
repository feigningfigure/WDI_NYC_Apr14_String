require 'rails_helper'

RSpec.describe Practice, :type => :model do
  
  it "should print 'Hello World'" do
    expect(print_message("Hello World")).to eq("Hello World")
  end

end
