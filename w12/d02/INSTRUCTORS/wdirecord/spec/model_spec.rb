require 'wdirecord/model'


require 'wdirecord_helper'


RSpec.describe WDIRecord::Person do

    # see wdirecord_helper.rb
    include_context "WDIRecord specs"

    it "should be able to retrieve a person by name" do
        # delete this pending() statement to actually run the test
        pending("Here's an idea for a first test you can write.")

        max = WDIRecord::Person.find_by({'name' => 'Max Cantor'})

        expect(max.profession).to eq('Teacher')
    end

end
