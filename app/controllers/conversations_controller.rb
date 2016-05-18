class ConversationsController < ApplicationController
  layout "conversations"

  def index
    @conversations = current_user.sorted_conversations
    @matches = current_user.accepted_matches
  end

end
