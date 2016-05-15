class SearchesController < ApplicationController
  def index
    @users = return_opposite_type(current_user)
    render 'index'
  end
end
