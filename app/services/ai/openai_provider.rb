module Ai
  class OpenaiProvider
    def initialize(message)
      @message = message
    end

    def call
      client = OpenAI::Client.new

      response = client.responses.create(
        model: "gpt-5.6-luna",
        input: @message
      )

      response.output_text
    end
  end
end
