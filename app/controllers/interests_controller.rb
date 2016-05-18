class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
    same_type = User.where(type: current_user.type)
    @interested_users = @interest.users.distinct - same_type
  end
end
