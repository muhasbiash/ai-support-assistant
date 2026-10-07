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
      when "openai"
        Ai::OpenaiProvider.new(@message)
      else
        Ai::MockProvider.new(@message)
      end
    end
  end
end