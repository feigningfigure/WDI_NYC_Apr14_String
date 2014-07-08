RSpec.shared_context "WDIRecord specs" do

    # Both of our spec files will do the exact same thing as part of
    # the setup process, so we can stay DRY by storing the procedure
    # here and invoking it with 'include_context()'.

    before(:all) do
        WDIRecord::Database.connect()
        WDIRecord::Database.create_schema()
        WDIRecord::Database.create_test_data()
    end

    # This is so we can just say 'db' in our tests instead of having to write
    # 'WDIRecord::Database.connection' every time
    let(:db) { WDIRecord::Database.connection }

end
