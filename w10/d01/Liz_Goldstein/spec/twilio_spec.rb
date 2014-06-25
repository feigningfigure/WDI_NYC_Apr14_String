require 'awesome_print'

require 'twilio'

describe Twilio do

it "should send a text message" do
    my_phone_number = ENV['MY_PHONE_NUMBER']
    result = Twilio.send_sms(my_phone_number, "Hello, world!")
    ap result, indent: -6
    expect(result["status"]).to eq("queued")
end
end
