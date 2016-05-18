class WelcomeController < ApplicationController
  before_action :finish_profile

  def index
    if current_user
      render 'show'
    else
      render 'index'
    end
  end
end
