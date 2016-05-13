class WelcomeController < ApplicationController
  def index
    if current_user
      @user
    else
      redirect_to '/auth/linkedin'
    end
  end
end
