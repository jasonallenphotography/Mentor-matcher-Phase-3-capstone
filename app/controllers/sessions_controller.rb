class SessionsController < ApplicationController
  def create
    #try to change pretty generate to parse later
    @data = JSON.pretty_generate(auth_hash) #.to_json
    @data_hash = YAML.load(@data)
    if @user = User.find_or_create_from_auth_hash(request.env["omniauth.auth"])
      @user = session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/auth/linkedin'
    end
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
