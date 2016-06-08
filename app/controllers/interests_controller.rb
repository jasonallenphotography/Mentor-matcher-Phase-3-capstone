class InterestsController < ApplicationController
  before_action :allow_user, :finish_profile

  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
    same_type = User.where(type: current_user.type)
    users_with_common_interests = @interest.users.distinct - same_type
    bots = [User.find(1), User.find(2)]
    users_with_common_interests -= bots

    @interested_users = current_user.users_sorted_by_common_interests_with_score(users_with_common_interests)
  end
end
