require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message" do
        my_phone_number = ENV["MY_PHONE_NUMBER"]
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result if ENV["TWILIO_DEBUG"] == "true"
        expect(result["status"]).to eq("queued")
    end

    it "should ask about an account" do
        result = Twilio.view_account(ENV['TWILIO_SID'])
        ap result if ENV["TWILIO_DEBUG"] == "true"
        expect(result["type"]).to eq("Trial")
    end

    it "should ask about an already sent SMS" do
        result = Twilio.view_sms("SM1d4c63ce8e684a3ba9e9118fe05738f3")
        ap result if ENV["TWILIO_DEBUG"] == "true"
        expect(result["body"]).to eq("Hello, world!")
    end

end
