class SessionsController < ApplicationController
  def create
    # binding.pry
    p auth_hash
      puts puts puts

    @data = JSON.pretty_generate(auth_hash) #.to_json
    p "This is @data"
    print @data
    puts
    puts
    puts
    p "This is Jackie's data"
    @data_hash = YAML.load(@data)
    puts @data_hash['extra']['raw_info']

    user = User.find_or_create_from_auth_hash(request.env["omniauth.auth"])
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
