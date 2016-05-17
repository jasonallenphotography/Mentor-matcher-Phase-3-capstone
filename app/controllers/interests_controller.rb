class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
    @interested_users = @interest.users - [current_user]
  end
end
