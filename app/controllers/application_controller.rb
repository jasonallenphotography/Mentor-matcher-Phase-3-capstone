class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :needs_type?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    session[:user_id] && current_user.present?
  end

  def needs_type?
    current_user.type == nil
  end

  def return_opposite_type(current_user)
    if current_user.type == "Mentor"
      User.where(type: "Mentee")
    else
      User.where(type: "Mentor")
    end
  end

end
