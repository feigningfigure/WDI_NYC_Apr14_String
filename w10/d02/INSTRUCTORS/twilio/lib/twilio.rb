require 'httparty'

class Twilio

  def self.send_sms(recipient_number, message)
      url = "https://api.twilio.com/2010-04-01/Accounts/AC0f8741036e06b515d23e48808c6c4391/Messages.json"

      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        },

        body: {
          From: "+15162034469",
          To: recipient_number,
          Body: message
        }

      }

      return HTTParty.post(url, options)
    end

  def self.view_account(account_sid)
      url = "https://api.twilio.com/2010-04-01/Accounts/#{account_sid}.json"

      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        }
      }

      return HTTParty.get(url, options)
  end

end
