require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message" do
        my_phone_number = '+15164950887'
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result, indent: -6
        expect(result["status"]).to eq("queued")
    end

    it "should ask about a text message" do
      result = Twilio.get("https://api.twilio.com/2010-04-01/Accounts/AC0f8741036e06b515d23e48808c6c4391.json")
      ap result, indent: -6
      expect(result["type"]).to eq("Trial")
    end

end
