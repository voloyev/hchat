module Web::Controllers::Home
  class New
    include Web::Action

    # expose :server

    def call()
      # @server = Hchat::TCPServ.new(params)
    end
  end
end
