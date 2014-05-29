# Define some convenience methods for log message formatting.

def timestamp()
    return Time.now.strftime("%F %T")
end

def log_format(name, count, message)
    return "#{name} (#{count}) at #{timestamp()}: #{message}"
end

class Logger
    # name: The name of the logger.
    # log: An array to which all messages will be appended.
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

def make_logger(name, log)
    count = 0
    logger = Proc.new do |message|
        count += 1
        puts log_format(name,count, message)
    end
    return logger
end

# --

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
messages = []
prove_sameness(make_logger("ERROR", messages), make_logger("INFO", messages))
puts messages.join("\n")
