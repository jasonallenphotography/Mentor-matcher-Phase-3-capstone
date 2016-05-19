class MatchesController < ApplicationController
  before_action :allow_user, :finish_profile

  def index
    mentor? ? @matches = AcceptedMatch.where(mentor_id: current_user.id) : @matches = AcceptedMatch.where(mentee_id: current_user.id)
    bot1matches = AcceptedMatch.where(initiator_id: 1)
    bot2matches = AcceptedMatch.where(initiator_id: 2)
# binding.pry
    bots = bot1matches + bot2matches
    @matches -= bots
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

    @convo = Conversation.find_or_create_by(mentor: @match.mentor, mentee: @match.mentee)

    @match.conversation_id = @convo.id

    if @match.save
      redirect_to '/matches'
    else
      @errors = @match.errors.full_messages
      render 'welcome/show'
    end
  end

  def update
    @match = Match.find(params[:id])

    @match.assign_attributes(match_params)
    if request.xhr? && @match.save
      render partial: 'matches_index_tab2_partial', locals: {matches: @matches}, layout: false
    elsif @match.save
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
