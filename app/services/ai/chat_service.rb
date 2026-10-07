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
      Ai::MockProvider.new(@message)
    end
  end
end