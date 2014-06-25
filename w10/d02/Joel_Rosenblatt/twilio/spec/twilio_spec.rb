require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message" do
        my_phone_number = '+13477062768'
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result if ENV["TWILIO_DEBUG"] == "true"
        expect(result["status"]).to eq("queued")
    end

    it "should ask about a text message" do
      result = Twilio.get("https://api.twilio.com/2010-04-01/Accounts/ACa095443fd2e32888a80c249e74a6a4e2.json")
      ap result if ENV["TWILIO_DEBUG"] == "true"
      expect(result["type"]).to eq("Trial")
    end

end
