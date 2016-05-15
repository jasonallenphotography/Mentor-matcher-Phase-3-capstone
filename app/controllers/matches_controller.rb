class MatchesController < ApplicationController

  def index
    @matches = current_user.accepted_matches
    @matches_pending_my_decision = PendingMatch.where(receiver_id: current_user.id)
    @matches_pending_others_decision = PendingMatch.where(initiator_id: current_user.id)
  end


  def create
    @match = PendingMatch.new(match_params)
    @match.initiator_id = current_user.id

    if mentor?
      @match.mentor = current_user
      @match.mentee = @match.receiver
    else
      @match.mentor = @match.receiver
      @match.mentee = current_user
    end

    @convo = Conversation.create(mentor: @match.mentor, mentee: @match.mentee)
    @match.conversation_id = @convo.id

    if @match.save
      redirect_to '/matches'
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

    @match.assign_attributes(match_params)
    if @match.save
      redirect_to '/matches'
    else
      @errors = @match.errors.full_messages
      render 'index'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to '/matches'
  end

  private

    def match_params
      params.require(:match).permit(:type,
                                    :receiver_id,
                                    :initiator_id)
    end


end



