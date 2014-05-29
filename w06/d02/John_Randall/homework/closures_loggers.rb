# Define some convenience methods for log message formatting.





#### Shared convienice methods
def timestamp()
    return Time.now.strftime("%F %T")
end

def log_format(name, count, message)
    return "#{name} (#{count}) at #{timestamp()}: #{message}"
end









#### Class implamentation
class Logger
    # name: The name of the logger.
    # log: An array to which all logfile will be appended.
    def initialize(prefix, output_destination)
        @prefix = prefix
        @count = 0
        @output_destination = output_destination
    end

    def call(message)
        @count += 1
        @output_destination.push(log_format(@prefix, @count, message))
    end
end








#### Closure implamentation
def make_logger(prefix, output_destination)
            # ("ERROR", logfile)
    # Returns a Proc 
        #which takes 1 argument (the message) and 
        #writes a log message to the filename 
            #which begins with the prefix (ERROR), 
            #and the amount of log messages written to that file.
    

    # prefix = prefix
    # output_destination = output_destination
    count = 0

    return Proc.new do |message|
        count += 1
        output_destination.push(log_format(prefix, count, message))
        
    end

end









# ---

def prove_sameness(log_error, log_info)
    log_error.call("Incorrect user password.")
    log_info.call("User logged in.")
    log_info.call("User posted a news update.")
    log_error.call("User attempted to do something productive.")
    log_info.call("Admin deleted user account.")
end



puts "CLASSES:"; puts
logfile = []                                                                   #make an empty log-file called logfile
prove_sameness(Logger.new("ERROR", logfile), Logger.new("INFO", logfile))     #pass a logger and log-file (logfile) to the sameness checker
puts logfile.join("\n")

puts
puts
puts

puts "CLOSURES:"; puts
logfile = []
prove_sameness(make_logger("ERROR", logfile), make_logger("INFO", logfile))
puts logfile.join("\n")








