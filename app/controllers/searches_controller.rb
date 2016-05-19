class SearchesController < ApplicationController
  before_action :allow_user, :finish_profile

  def index
    if params[:search]
      users_of_opposite_type = return_opposite_type(current_user)
      results = users_of_opposite_type.search(params[:search]).distinct
      @users = current_user.users_sorted_by_common_interests_with_score(results)
    end
  end
end
