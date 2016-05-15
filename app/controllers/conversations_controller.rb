class ConversationsController < ApplicationController

  def index
    # return_opposite_type(current_user)
    # instead of all users, only pass users who have accepted and matched
    @conversations = current_user.conversations
    @matches = current_user.accepted_matches
  end

  def create
    @conversation = Conversation.find_or_create_by(conversation_params)
    # if Conversation.between(params[:mentor_id], params[:mentee_id]).present?
    #   @conversation = Conversation.between(params[:mentor_id],params[:mentee_id]).first
    # else
    #   @conversation = Conversation.create!(conversation_params)
    # end
    if @conversation.save
      redirect_to conversation_messages_path(@conversation)
    else
      @errors = @conversation.errors.full_messages
      redirect_to root_path
    end

  end

  private
    def conversation_params
      params.permit(:mentor_id, :mentee_id)
    end
end
