class ConversationsController < ApplicationController
  def index
    @conversations = policy_scope(Conversation)
    @conversations = Conversation.where("user_to_id = ? OR user_from_id = ?", current_user.id, current_user.id)
  end

  def show
    @conversation = Conversation.find(params[:id])
    authorize @conversation
    @message = Message.new
  end

  def new
    @conversation = Conversation.new
    authorize @conversation
  end
end
