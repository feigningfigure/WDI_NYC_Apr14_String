require 'awesome_print'
# require 'HTTPARTY'

require 'twilio'

describe Twilio do

	it "should send a text message" do
		my_phone_number = ENV['MY_NUMBER']
		result = Twilio.send_sms(my_phone_number, "Hello, world!")
		ap result, indent: -6
		expect(result["status"]).to eq("queued")
	end

	it "should ask about a text message" do
		Twilio.instance_variable_get(:@SID)
		result = Twilio.get("https://api.twilio.com/2010-04-01/Accounts/ACbae098e3c4ed32d292c6d3694dc2042f/Messages/SMcd76e34873f0b9e009526f58a033258f.json")
		ap result, indent: -6
		# result = Twilio.get('https://api.twilio.com/2010-04-01/Accounts/"#{@SID}"/Messages/SMcd76e34873f0b9e009526f58a033258f.json')
		# ap result, indent: -6
	end	
end
