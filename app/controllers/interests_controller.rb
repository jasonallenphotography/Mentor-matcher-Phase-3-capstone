class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
    @interested_users = @interest.users - [current_user]
    # binding.pry
    # @users = return_opposite_type(current_user)
  end
end
