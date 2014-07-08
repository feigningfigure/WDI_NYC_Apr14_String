require 'wdirecord/database'


require 'wdirecord_helper'


RSpec.describe "my database with test data" do

    # see wdirecord_helper.rb
    include_context "WDIRecord specs"

    def bad_transaction()
        db.execute(
            WDIRecord::SQL::INSERT_MEMORY,
            10,
            'Nowhere',
            'Person with id 10 should not exist; neither should this row!'
        )
    end

    it "should have two people in it" do
        results = db.execute 'select * from people;'
        expect(results.size).to eq(2)
    end

    it "should explode if I try to violate foreign key constraints" do
        expect { bad_transaction() }.to raise_error(SQLite3::ConstraintException)
    end

end
