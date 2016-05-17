class UsersController < ApplicationController

  def index
    @users = return_opposite_type(current_user)
  end


  def new
    @user = User.new()
  end


  def create
    @user = User.new()
    if @user.save
      redirect_to users_path
    # else
      # @errors = @user.errors.full_messages
      # render 'new'
    end
  end


  def show
   @user = User.find(params[:id])
   @interests = Interest.all
  end


  def edit
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)
  end


  def update
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)

    @user.assign_attributes(user_params)
    # binding.pry

    if @user.save
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end


  def destroy
    @user = User.find(params[:id])
    redirect_unless_editing_or_deleting_own(@user)

    @user.destroy
    redirect '/users'
  end

  def finish
    render 'finish'
  end

  private
  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :location,
                                 :industry,
                                 :picture_url,
                                 :public_profile_url,
                                 :current_title,
                                 :current_company,
                                 :type,
                                 :status,
                                 :mission_statement,
                                 :user_interests)
  end

end
