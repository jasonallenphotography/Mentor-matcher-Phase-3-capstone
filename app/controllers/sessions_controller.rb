class SessionsController < ApplicationController
  def create
    #try to change pretty generate to parse later
    @data = JSON.pretty_generate(auth_hash) #.to_json
    @data_hash = YAML.load(@data)
    if @user = User.find_or_create_from_auth_hash(request.env["omniauth.auth"])
      session[:user_id] = @user.id
      unless needs_type?
        redirect_to '/'
      else
        redirect_to "/users/#{@user.id}/finish"
      end
    else
      redirect_to '/auth/linkedin'
    end
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
