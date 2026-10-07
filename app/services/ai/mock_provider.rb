module Ai
  class MockProvider
    def initialize(message)
      @message = message
    end

    def call
      case @message.downcase
      when /rails/
        "Ruby on Rails is a web framework for building web applications with Ruby."
      when /ruby/
        "Ruby is a programming language designed to be simple and productive."
      when /database/
        "A database stores and organizes the data used by an application."
      else
        "Thanks for your question! This is a mock AI response."
      end
    end
  end
end
