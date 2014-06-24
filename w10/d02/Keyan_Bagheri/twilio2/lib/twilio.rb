require 'httparty'

class Twilio

  BASE_URI = 'https://api.twilio.com/2010-04-01'

  def self.send_sms(recipient_number, message)
      # .json
      url = "#{Twilio::BASE_URI}/Accounts/AC0bb8408fd271290d53c9cc10c696f44c/Messages.json"

      # everything in 'basic_auth'
      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        },

        body: {
          From: "+17577078093",
          To: recipient_number,
          Body: message
        }

      }

      # HTTParty
      # url, options
      return HTTParty.post(url, options)
  end

  def self.view_account(account_sid)
      # .json
      url = "#{Twilio::BASE_URI}/Accounts/#{account_sid}.json"

      # everything in 'basic_auth'
      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        }
      }

      # HTTParty
      # url, options
      return HTTParty.get(url, options)
  end

  def self.view_sms(sms_sid)
    url = "#{Twilio::BASE_URI}/Accounts/AC0bb8408fd271290d53c9cc10c696f44c/Messages/#{sms_sid}.json"

    # everything in 'basic_auth'
    options = {
      basic_auth: {
        username: ENV['TWILIO_ACCOUNT_SID'],
        password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
      }
    }

    # HTTParty
    # url, options
    return HTTParty.get(url, options)
  end

end
