class ConversationsController < ApplicationController
  before_action :allow_user, :finish_profile

  layout "conversations"

  def index
    @conversations = current_user.sorted_conversations
    @matches = current_user.accepted_matches
  end

end
