class SearchesController < ApplicationController
  before_action :allow_user, :finish_profile

  def index
    if params[:search]
      @users_of_opposite_type = return_opposite_type(current_user)
      @users = @users_of_opposite_type.search(params[:search]).distinct
      # @users.distinct
    end
  end
end
