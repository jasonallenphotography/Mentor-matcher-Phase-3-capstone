class MessagesController < ApplicationController
  layout "conversations"
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.messages.reverse
    if @messages.length > 5
      @over_five = true
      @messages = @messages[-5..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @conversation.messages.reverse
    end
    if @messages.last
      if @messages.last.user_id != current_user.id
        @messages.last.read = true;
        @messages.last.save
      end
    end

    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private

    def message_params
      params.require(:message).permit(:body, :user_id)
    end

end
