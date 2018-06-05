require 'socket'

module Hchat
  class TCPServ
    attr_reader :tcp_server

    def initialize(port)
      @tcp_server = TCPServer.new(port)
    end

    def start
      loop do
        Thread.start(tcp_server.accept) do |client|
          client.puts "Hello !"
          client.puts "Time is #{Time.now}"
          client.close
        end
      end
    end
  end
end
