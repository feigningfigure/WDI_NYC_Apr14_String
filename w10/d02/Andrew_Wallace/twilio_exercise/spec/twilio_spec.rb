require 'awesome_print'


require 'twilio'

  describe Twilio do

  it "should send a text message" do
      my_phone_number = '1-201-580-2922'
      result = Twilio.send_sms(my_phone_number, "Hello, world!")
      ap result, indent: -6
      expect(result["status"]).to eq("queued")
  end

  # it "should get account information" do
  #   result = Twilio.get('https://api.twilio.com/2010-04-01/Accounts/ACafaf16245a25f3bdfae3cd60b5602013.json')
  #   # awesome print the output and fix the indenting
  #   ap result, indent: -6
  #   expect(result["type"]).to eq("Trial")
  # end
end
