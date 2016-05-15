class MatchesController < ApplicationController

  def index
    @matches = nil # WORK IN PROGRESS, will continue for later AcceptedMatch.where(receiver_id: current_user.id) # || initiator_id: current_user.id
    @matches_pending_my_decision = PendingMatch.where(receiver_id: current_user.id)
    @matches_pending_others_decision = PendingMatch.where(initiator_id: current_user.id)
  end


  def create
    @match = PendingMatch.new(params[:pending])
    @match.conversation = Conversation.new()
    if @match.save
      redirect_to '/matches#tabs-2'
    else
      @errors = @match.errors.full_messages
      redirect_to user_path(current_user)
    end
  end


  def show
    #Chat window that belongs to match will go here
  end


  def update
    @match = Match.find(params[:id])

    @match.assign_attributes(params[:match])
    if @match.save
      redirect_to '/'
    else
      @errors = @match.errors.full_messages
      render 'index'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
  end

end



