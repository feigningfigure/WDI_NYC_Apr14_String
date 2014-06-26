require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message" do
        my_phone_number = "+12067554332"
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result if ENV["TWILIO_DEBUG"] == "true"
        expect(result["status"]).to eq("queued")
    end

    it "should ask about an account" do
        result = Twilio.view_account("AC2cedc4216b9d2d4c5431daf787aab1b6")
        ap result if ENV["TWILIO_DEBUG"] == "true"
        expect(result["type"]).to eq("Trial")
    end

    it "should ask about an already-sent SMS" do
        result = Twilio.view_sms("SMe73e8370de3545bfa4557dd2810d2717")

    end

end
