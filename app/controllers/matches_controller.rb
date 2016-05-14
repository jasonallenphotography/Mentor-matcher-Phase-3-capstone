class MatchesController < ApplicationController

  def index
    @matches_pending_my_decision = PendingMatch.where(receiver_id: current_user.id)
    @matches_pending_others_decision = PendingMatch.where(initiator_id: current_user.id)
  end


  def create
  end


  def show
  end


  def update
  end


end



