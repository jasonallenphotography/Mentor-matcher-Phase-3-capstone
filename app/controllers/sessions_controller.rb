class SessionsController < ApplicationController
  def create
    binding.pry
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    # @user = User.find_or_create_from_auth_hash(auth_hash)
    # self.current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
