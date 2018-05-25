module Web::Controllers::Home
  class Index
    include Web::Action
    expose :hello
    expose :server
    def call(params)
      @hello = "hello! #{params.to_h}"
      p = params.to_h
      @server = Hchat::TCPServ.new(p[:port])
    end
  end
end
