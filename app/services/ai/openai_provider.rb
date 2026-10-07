module Ai
  class OpenaiProvider
    def initialize(message)
      @message = message
      @client = OpenAI::Client.new(
        api_key: ENV.fetch("OPENAI_API_KEY")
      )
    end

    def call
      response = @client.responses.create(
        model: "gpt-5.2",
        input: @message
      )

      response.output_text
    end
  end
end
