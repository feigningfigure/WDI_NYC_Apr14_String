# $.ajax({
#     url: '/2010-04-01/Accounts/{AccountSid}/Messages',
#     type: 'GET',
#     dataType: "JSON",
#     })

# data = {message: "hello"}

# $.ajax({
#     url: '/2010-04-01/Accounts/AC96de38934bb529ff646aac4cb42cbb23/Messages',
#     type: 'POST',
#     dataType: "JSON",
#     data: data
    # })

HTTParty.get('/2010-04-01/Accounts/AC96de38934bb529ff646aac4cb42cbb23/Messages')
HTTParty.post("https://api.twilio.com/2010-04-01/Accounts/AC96de38934bb529ff646aac4cb42cbb23/Messages")
HTTParty.post("https://api.twilio.com/2010-04-01/Accounts/AC96de38934bb529ff646aac4cb42cbb23/Messages/SMe7141d15b0154ca7b7fee4c72c4fb1a2.json")

Httparty.post("https://api.twilio.com/2010-04-01/Accounts/AC96de38934bb529ff646aac4cb42cbb23/Messages/ {:From => from, :To => to, :Message => "This is a message"})

require 'twilio'

account_sid = 'AC32a3c49700934481addd5ce1659f04d2'
auth_token = '0af32d3080e49027681d372cd3f5518d'
@client = Twilio::REST::Client.new account_sid, auth_token
binding.pry
