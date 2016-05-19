class InterestsController < ApplicationController
  before_action :allow_user, :finish_profile

  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
    same_type = User.where(type: current_user.type)
    @interested_users = @interest.users.distinct - same_type
    bots = [User.find(1), User.find(2)]
    @interested_users -= bots
  end
end
