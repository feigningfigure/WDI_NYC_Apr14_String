require 'pry'

class Logger
    def initialize(name, log)
        @name = name
        @count = 0
        @log = log
    end

    def call(message)
        @count += 1
        @log.push(log_format(@name, @count, message))
    end
end


def timestamp()
    return Time.now.strftime("%F %T")
end

def log_format(name, count, message)
    return "#{name} (#{count}) at #{timestamp()}: #{message}"
end

def make_logger(name, message)
    count = 0
    return Proc.new do
        count += 1
        puts "#{name} (#{count}) at #{timestamp()}: #{message}"
    end
end

def prove_sameness(log_error, log_info)
    log_error.call("Incorrect user password.")
    log_info.call("User logged in.")
    log_info.call("User posted a news update.")
    log_error.call("User attempted to do something productive.")
    log_info.call("Admin deleted user account.")
end

puts "CLASSES:"; puts
messages = []
prove_sameness(Logger.new("ERROR", messages), Logger.new("INFO", messages))
puts messages.join("\n")

puts

puts "CLOSURES:"; puts
error_messages = ["Incorrect user password.","User attempted to do something productive."]
info_messages = ["User logged in.","User posted a news update.","Admin deleted user account."]
puts messages.join("\n")


