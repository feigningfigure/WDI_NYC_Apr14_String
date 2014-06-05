require 'socket'

server = TCPServer.new ('127.0.0.1', 4567)
connection = server.accept();
