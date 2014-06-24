require 'httparty'

class Twilio

    ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
    ACCOUNT_AUTH_TOKEN = ENV['TWILIO_ACCOUNT_AUTH_TOKEN']

    MY_TWILIO_NUMBER = ENV['MY_TWILIO_NUMBER']

    BASE_URI = 'https://api.twilio.com/2010-04-01'

    BASE_OPTIONS = {
        basic_auth: {
            username: ACCOUNT_SID,
            password: ACCOUNT_AUTH_TOKEN
        }
    }

    def self.send_sms(recipient_number, message)
        request :post, "Messages", {
            body: {
                From: MY_TWILIO_NUMBER,
                To: recipient_number,
                Body: message
            }
        }
    end

    def self.view_account()
        request :get, nil
    end

    def self.view_sms(sms_sid)
        request :get, "Messages/#{sms_sid}"
    end

    private

    def self.request(request_method, path, options={})
        url_parts = [
            BASE_URI,
            'Accounts',
            ACCOUNT_SID,
        ]

        # When asking for an account, 'path' will be nil
        url_parts.push(path) if path

        url = url_parts.join('/') + ".json"

        HTTParty.send(request_method, url, BASE_OPTIONS.merge(options))
    end

end
