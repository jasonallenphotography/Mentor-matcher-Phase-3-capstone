class SearchesController < ApplicationController
  def index
    if params[:search]
      @users_of_opposite_type = return_opposite_type(current_user)
      bots = User.where(id: 1 || 2 )
      @users = @users_of_opposite_type.search(params[:search]).distinct - bots
    end
  end
end
