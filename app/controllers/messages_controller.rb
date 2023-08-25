class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      redirect_to user_conversation_messages_path(@conversation)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
