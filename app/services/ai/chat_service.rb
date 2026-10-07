module Ai
  class ChatService
    def initialize(message)
      @message = message
    end

    def call
      provider.call
    end

    private

    def provider
      case ENV.fetch("AI_PROVIDER", "mock")
      when "mock"
        Ai::MockProvider.new(@message)
      when "openai"
        Ai::OpenaiProvider.new(@message)
      else
        raise "Unsupported AI provider: #{ENV['AI_PROVIDER']}"
      end
    end
  end
end
