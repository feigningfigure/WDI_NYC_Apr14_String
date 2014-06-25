require 'awesome_print'

require 'twilio_refactored'

describe Twilio do

    after :each do
        # local variable fall out of scope after each example,
        # so we have to store it as an instance variable to reduce
        # redundancy by referencing it in this 'after' block
        ap @result if ENV["TWILIO_DEBUG"]
    end

    # Invoke rspec with `rspec --tag ~spammy` to exclude this example.
    it "should send a text message", spammy: true do
        my_phone_number = ENV["MY_PHONE_NUMBER"]
        @result = Twilio.send_sms(my_phone_number, "Hello, world!")

        expect(@result["status"]).to eq("queued")
    end

    it "should ask about an account" do
        @result = Twilio.view_account()

        expect(@result["type"]).to eq("Trial")
    end

    it "should ask about an already-sent SMS" do
        @result = Twilio.view_sms("SMcdf6fba7d0a64cd5aa708ffda93b8724")

        expect(@result["body"]).to eq("Hello, world!")
    end

end
