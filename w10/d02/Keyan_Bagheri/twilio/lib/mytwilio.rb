require 'httparty'

class Twilio

  def self.send_sms(recipient_number, message)
    url = 'https://api.twilio.com/2010-04-01/Accounts/AC0bb8408fd271290d53c9cc10c696f44c/Messages.json'

    options = {
      basic_auth: {
        username: ENV['TWILIO_ACCOUNT_SID'],
        password: ENV['TWILIO_ACCOUNT_TOKEN']
        },

        body: {
          From: "+17577078093",
          To: recipient_number,
          Body: message
        }
      }

    end

    def self.get(url)
      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_TOKEN']
          }
        }

        options.merge!({
          debug_output: $stdout
          })

        return HTTParty.get(url, options)

      end
