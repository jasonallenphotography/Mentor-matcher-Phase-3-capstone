class UserInterestsController < ApplicationController
  def create
    @user_interest = UserInterest.new(interest_id: params[:interest_id])
    @user_interest.user = current_user
    if @user_interest.save
      redirect_to user_path(current_user)
    else
      @errors = @user_interest.errors.full_messages
      render 'users#show'
    end
  end

  def destroy
  end


end
