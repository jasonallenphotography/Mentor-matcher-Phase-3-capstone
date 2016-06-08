class ConversationsController < ApplicationController
  before_action :allow_user, :finish_profile

  layout "conversations"

  def index
    @visible_conversations = current_user.sorted_conversations
  end

end
