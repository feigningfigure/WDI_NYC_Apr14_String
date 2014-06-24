require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message", spammy: true do
        my_phone_number = ENV["MY_PHONE_NUMBER"]
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result if ENV["TWILIO_DEBUG"]
        expect(result["status"]).to eq("queued")
    end

    it "should ask about an account" do
        result = Twilio.view_account(ENV['TWILIO_ACCOUNT_SID'])
          ap result if ENV["TWILIO_DEBUG"]
        expect(result["type"]).to eq("Trial")
    end

    it "should ask about an already-sent SMS" do
        result = Twilio.view_sms("SMcdf6fba7d0a64cd5aa708ffda93b8724")
        ap result if ENV["TWILIO_DEBUG"]
        expect(result["body"]).to eq("Hello, world!")
      end

end
