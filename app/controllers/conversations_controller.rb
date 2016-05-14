class ConversationsController < ApplicationController

  def index
    @users = User.all
    # instead of all users, only pass users who have accepted and matched
    @conversations = Conversation.all
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id],params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    redirect_to conversation_messages_path(@conversation)

  end

  private
    def conversation_params
      params.require(:conversation).permit(:sender_id, :recipient_id)
    end
end
