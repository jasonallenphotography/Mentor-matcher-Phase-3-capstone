class SearchesController < ApplicationController
  def index
    if params[:search]
      @users_of_opposite_type = return_opposite_type(current_user)
      @users = @users_of_opposite_type.search(params[:search])
    # else
    #   @users_of_opposite_type = return_opposite_type(current_user)
      # @users = @users_of_opposite_type.search(params[:search])
      # @users = User.joins(:interests).where("interest.name LIKE ?", "<%=interest.name%>")
      # @users = User.find_by()
    end
  end
end
