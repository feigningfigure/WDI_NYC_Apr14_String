def timestamp()
    return Time.now.strftime("%F %T")
end

def log_format(name, count, message)
    return "#{name} (#{count}) at #{timestamp()}: #{message}"
end

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

def make_logger(name, log)
    count = 0
    return Proc.new do |message|
   count =+1
  time = Time.now.strftime("%F %T")
    puts log_format(name, count, message)
end
end



puts "CLASSES:"; puts

messages = []

log_error = Logger.new("ERROR", messages)
log_info = Logger.new("INFO", messages)

log_error.call("Incorrect user password.")
log_info.call("User logged in.")
log_info.call("User posted a news update.")
log_error.call("User attempted to do something productive.")
log_info.call("Admin deleted user account.")

puts messages.join("\n")

puts

puts "CLOSURES:"; puts

messages = []

log_error = make_logger("ERROR", messages)
log_info = make_logger("INFO", messages)

log_error.call("Incorrect user password.")
log_info.call("User logged in.")
log_info.call("User posted a news update.")
log_error.call("User attempted to do something productive.")
log_info.call("Admin deleted user account.")

puts messages.join("\n")

