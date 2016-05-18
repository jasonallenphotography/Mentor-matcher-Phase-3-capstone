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
      @errors = @user.errors.full_messages
      redirect_to '/'
    end
  end

  def failure
    @errors = ["From LinkedIn: #{params[:message]}"]
    render 'welcome/index'
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
