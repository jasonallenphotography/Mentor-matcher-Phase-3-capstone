class WelcomeController < ApplicationController
  # before_action :finish_profile

  def index
    if current_user && needs_type?
      redirect_to "/users/#{current_user.id}/finish"
    elsif current_user && !needs_type?
      render 'show'
    else
      render 'index'
    end
  end
end
