require 'httparty'

class Twilio

def send_sms(recipient_number, message)
  url = 'https://api.twilio.com/2010-04-01/Accounts/ACafaf16245a25f3bdfae3cd60b5602013/Messages.json'
    options = {
      basic_auth: {
        username: 'ACafaf16245a25f3bdfae3cd60b5602013',
        password: 'cd8c1a297969a09899fcdc73439f7f08'
      },

      body: {
        From: "12015802922",
        To: recipient_number,
        Body: message
      },
        debug_output: $stdout
    }
    return HTTParty.post(url, options)

  # def self.get(url)
  #   options = {
  #     basic_auth: {
  #       username: 'ACafaf16245a25f3bdfae3cd60b5602013',
  #       password: 'cd8c1a297969a09899fcdc73439f7f08'
  #     }
  #   }

# Does the same exact thing as the options above but has the authorization form created from the username and password.
# options = {
#   headers: {
#     "Authorization" => "Basic QUNhZmFmMTYyNDVhMjVmM2JkZmFlM2NkNjBiNTYwMjAxMzpjZDhjMWEyOTc5NjlhMDk4OTlmY2RjNzM0MzlmN2YwOA=="
#   }
# }

options.merge!({
  debug_output: $stdout
  })

    # GET method to get information
    # return HTTParty.get(url, options)
    # POST for sending SMS
#   end
# end


# base_url = 'https://api.twilio.com/2010-04-01'


# Twilio Account Credentials
# account_sid = 'ACafaf16245a25f3bdfae3cd60b5602013'
# auth_token = 'cd8c1a297969a09899fcdc73439f7f08'
