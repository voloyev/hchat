module Web::Controllers::Home
  class Index
    include Web::Action
    expose :hello
    def call(_)
      @hello = "hello! Bob"
    end
  end
end
