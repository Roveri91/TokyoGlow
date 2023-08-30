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

  def create
    receiver = User.find(params[:user_id])
    @conversation = Conversation.where(user_to: receiver, user_from: current_user).or(Conversation.where(user_to: current_user, user_from: receiver)).first
    @conversation = Conversation.create(user_to: receiver, user_from: current_user) if @conversation.nil?
    authorize @conversation
    redirect_to conversation_path(@conversation)
  end

  private

  def conversation_params
    params.permit(:user_from_id, :user_to_id)
  end
end
