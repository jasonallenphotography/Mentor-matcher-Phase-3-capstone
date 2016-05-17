class UserInterestsController < ApplicationController
  def create
    @user_interest = UserInterest.new(interest_id: params[:interest_id])
    @user_interest.user = current_user

    if request.xhr? && @user_interest.save
      render partial: 'new_interest', locals: {interest: @user_interest}, layout: false
    elsif @user_interest.save
      redirect_to user_path(current_user)
    else
      @errors = @user_interest.errors.full_messages
      render 'users#show'
    end
  end

  def destroy
    @user_interest = UserInterest.find(params[:id])
    @user_interest.destroy
    redirect_to edit_user_path(current_user)
  end


end
