require 'httparty'

class Twilio

  def self.send_sms(recipient_number, message)

      url = "https://api.twilio.com/2010-04-01/Accounts/ACa095443fd2e32888a80c249e74a6a4e2/Messages.json"

      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_ID'],
          password: ENV['TWILIO_AUTH_TOKEN']
        },

        body: {
          From: "+13234315254",
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
          username: ENV['TWILIO_ACCOUNT_ID'],
          password: ENV['TWILIO_AUTH_TOKEN']
        }
      }

      return HTTParty.get(url, options)
  end

end
