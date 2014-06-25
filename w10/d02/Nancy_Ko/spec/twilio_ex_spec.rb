require 'awesome_print'
require '../twilio_ex.rb'
require 'twilio'

describe Twilio do

    # it "should send a text message" do
    #     my_phone_number = ENV['MY_PHONE_NUMBER']
    #     result = Twilio.send_sms(my_phone_number, "Hello, world!")
    #     ap result, indent: -6
    #     expect(result["status"]).to eq("queued")
    # end

    it "should ask about a text message" do
    	result = Twilio.get(" https://api.twilio.com/2010-04-01/Accounts/AC37c4092ba2ee6ec7acec34ea01b06e35/Calls.json ")
    	ap result, indent: -6
    end

end





# curl -X POST https://api.twilio.com/2010-04-01/Accounts/AC37c4092ba2ee6ec7acec34ea01b06e35/Calls.json \-u AC37c4092ba2ee6ec7acec34ea01b06e35:48bc3aa6a24b5e37cd409ef84e504b4a \-d "From=+16466792572" \-d "To=+19173184836" \-d 'Url=http%3A%2F%2Ftwimlets.com%2Fecho%3FTwiml%3D%253CResponse%253E%253CSay%253EHello%252C%2BGood%2BMorning.%2B%2B%253C%252FSay%253E%253C%252FResponse%253E'



# curl -X POST 'https://api.twilio.com/2010-04-01/Accounts/AC37c4092ba2ee6ec7acec34ea01b06e35/Messages.json' \
# --data-urlencode 'To=9173184836'  \
# --data-urlencode 'From=+16466792572'  \
# --data-urlencode 'Body=This is a test . hope it works ' \
# -u AC37c4092ba2ee6ec7acec34ea01b06e35:48bc3aa6a24b5e37cd409ef84e504b4a