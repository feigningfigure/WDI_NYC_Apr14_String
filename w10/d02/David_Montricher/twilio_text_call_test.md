 Make a phone call with custom message read in voice:

 curl -X POST https://api.twilio.com/2010-04-01/Accounts/AC0241e08a9f3da39b74046267e3971c23/Calls.json \
   -u AC0241e08a9f3da39b74046267e3971c23:0d57e0fc6af047ee30286e93992787a8 \
   -d "From=+16467601600" \
   -d "To=+12126021844" \
   -d 'Url=http%3A%2F%2Ftwimlets.com%2Fecho%3FTwiml%3D%253CResponse%253E%253CSay%253EThis%2Bis%2Ba%2Btest%2Bmessage%252C%2Band%2BTwilio%2Bwill%2Bread%2Bthis%2Bmessage%2Bwhen%2Bcalling%2Bto%2Bmy%2BNew%2BYork%2Bcellphone%253C%252FSay%253E%253C%252FResponse%253E'


Send a text message with custom text:

   curl -X POST https://api.twilio.com/2010-04-01/Accounts/AC0241e08a9f3da39b74046267e3971c23/SMS/Messages.json \
    -u AC0241e08a9f3da39b74046267e3971c23:0d57e0fc6af047ee30286e93992787a8 \
    -d "From=+16467601600" \
    -d "To=+12126021844" \
    -d 'Body=This is a test message, and Twilio will read this message when calling to my New York cellphone'
