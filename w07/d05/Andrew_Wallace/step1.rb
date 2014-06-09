require 'socket'

# Open the wormhole
server = TCPServer.new('127.0.0.1', 4567)

# Someone wants to talk to us!
session = server.accept()

content_length = nil

lines = []
while line = session.gets and line !~ /^\s*$/
    if line.start_with?("Content-Length")
        content_length = line.split(": ")[-1].to_i
    end
    lines << line.chomp
end

request_headers = lines.join("\n")

if content_length
    request_body = session.readpartial(content_length)
end

# Log the line in terminal for reference
puts request_headers
puts
puts request_body

# Send a response
session.print("HTTP/1.1 200/OK\r\n")
session.print("Content-Type: text/html\r\n")
session.print("\r\n")
session.print("Thank you for requesting a webpage. Please enjoy.")

# Thanks guy! See ya later.
session.close()
