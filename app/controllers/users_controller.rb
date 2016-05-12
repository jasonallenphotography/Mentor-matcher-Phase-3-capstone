class UsersController < ApplicationController

  def index
    @users =  return_opposite_type(current_user)
    render 'index'
  end


  def new
    @user = User.new()
  end


  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to users_path
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end


  def show
   @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.assign_attributes(params[:user])

    if @user.save
      redirect_to users_path
    else
      render 'edit'
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect '/users'
  end

end
