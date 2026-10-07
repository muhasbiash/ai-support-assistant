class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])

    @message = @conversation.messages.create!(
      role: "user",
      content: params[:content]
    )

    ai_response = Ai::ChatService.new(@message.content).call

    @conversation.messages.create!(
      role: "assistant",
      content: ai_response
    )

    redirect_to conversation_path(@conversation)
  end
end