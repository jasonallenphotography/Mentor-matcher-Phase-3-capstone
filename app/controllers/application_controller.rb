class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :allow_user, :finish_profile, :logged_in?, :needs_type?, :mentor?, :return_opposite_type, :redirect_unless_editing_or_deleting_own

  def current_user
    User.find_by(id: session[:user_id])
  end

  def allow_user
    redirect_to root_path unless logged_in?
  end

  def finish_profile
    if needs_type?
      @errors = ["You must finish filling out your profile to view that page"]
      redirect_to "/users/#{current_user.id}/finish.html?errors=NO"
    end
  end

  def logged_in?
    session[:user_id] && current_user.present?
  end

  def needs_type?
    current_user.type == nil
  end

  def mentor?
    current_user.type == "Mentor"
  end

  def return_opposite_type(current_user)
    mentor? ? User.where(type: "Mentee") : User.where(type: "Mentor")
  end

  def redirect_unless_logged_in
    redirect_to '/login' unless logged_in?
  end

  def redirect_if_already_logged_in
    redirect_to '/' if logged_in?
  end

  def redirect_unless_current_user_owns(thing)
    redirect_to '/' unless logged_in? && current_user.id == thing.author_id
  end

  def redirect_unless_editing_or_deleting_own(profile_owner)
    unless logged_in? && current_user == profile_owner
      @user = User.find(profile_owner.id)
      @interests = Interest.all
      @user.errors.add(:user, "You do not have permission to edit profiles that are not yours.")
      @errors = @user.errors.full_messages
      render 'show'
    end
  end

end
