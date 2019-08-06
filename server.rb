require 'socket'

server = TCPServer.new(2222)
socket = server.accept

loop do

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

socket.close if they_said == 'quit'
end
