require 'awesome_print'

require 'twilio'

describe Twilio do

    # it "should send a text message" do
    #     my_phone_number = ENV["MY_PHONE_NUMBER"]
    #     result = Twilio.send_sms(my_phone_number, "Hello, world!")
    #     ap result if ENV["TWILIO_DEBUG"]
    #     expect(result["status"]).to eq("queued")
    # end

    # it "should ask about an account" do
    #     result = Twilio.view_account
    #     ap result if ENV["TWILIO_DEBUG"]
    #     expect(result["type"]).to eq("Trial")
    # end

    # it "should ask about an already-sent SMS" do
    #     result = Twilio.view_sms("SM8b4dd2f5a5e84ebf9066592d0d412979")
    #     ap result if ENV["TWILIO_DEBUG"]
    #     expect(result["body"]).to eq("sup yo")
    #   end

    it "should send a text message" do
        my_phone_number = ENV["MY_PHONE_NUMBER"]
        result = Twilio.action("send_sms", my_phone_number, "Hello, world!")
        ap result if ENV["TWILIO_DEBUG"]
        expect(result["status"]).to eq("queued")
    end

    it "should ask about an account" do
        result = Twilio.action("view_account")
        ap result if ENV["TWILIO_DEBUG"]
        expect(result["type"]).to eq("Trial")
    end

    it "should ask about an already-sent SMS" do
        result = Twilio.action("view_sms", nil, nil, "SM8b4dd2f5a5e84ebf9066592d0d412979")
        ap result if ENV["TWILIO_DEBUG"]
        expect(result["body"]).to eq("sup yo")
      end


end