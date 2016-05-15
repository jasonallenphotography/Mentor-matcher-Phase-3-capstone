class ConversationsController < ApplicationController

  def index
    @conversations = current_user.conversations
    @matches = current_user.accepted_matches
  end

end
