class SearchesController < ApplicationController
  def index
    if params[:search]
      @users_of_opposite_type = return_opposite_type(current_user)
      @users = @users_of_opposite_type.search(params[:search])
      render '/searches/index'
    end
  end
end
