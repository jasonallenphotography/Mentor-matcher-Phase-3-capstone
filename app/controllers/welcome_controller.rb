class WelcomeController < ApplicationController
  def index
    if current_user
      render 'show'
    else
      render 'index'
    end
  end
end
