require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message" do
        my_phone_number = "+12067554332"
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result if ENV["GOOGLE_DEBUG"] == "true"
        expect(result["status"]).to eq("queued")
    end

end
