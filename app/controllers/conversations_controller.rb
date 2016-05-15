class ConversationsController < ApplicationController

  def index
    # return_opposite_type(current_user)
    # instead of all users, only pass users who have accepted and matched
    @conversations = current_user.conversations
    @matches = current_user.accepted_matches
  end

end
